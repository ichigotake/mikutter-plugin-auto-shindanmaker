# coding: utf-8

miquire :core, 'user'

require 'net/http'
require 'uri'
require 'mechanize'
require 'nokogiri'


Plugin.create(:auto_shindanmaker) do

  def expand_url(url)
      return if url.empty?

      begin
        uri = url.kind_of?(URI) ? url : URI.parse(url)
        Net::HTTP.start(uri.host, uri.port) { |io|
            r = io.head(uri.path)
            r['Location'] || uri.to_s
        }
      rescue
        return url
      end
  end

  filter_update do |service, msgs|
    msgs.each{|m|
      next if m['source'].empty?
      URI.extract(m['message']).uniq.each do |url|

        next unless url =~ /^http:\/\/[a-zA-Z][a-zA-Z0-9\-\_\.\/]+/

        uri = expand_url(url) #短縮URLを展開
        next unless uri =~ /^http:\/\/shindanmaker\.com\/[0-9]+$/

        agent = Mechanize.new
        agent.get(uri) do |page|
          result = page.form_with(:id => 'form') do|search|
            search.u = Service.primary.user_obj
          end.submit

          title = result.title

          post_body = result.root.search('meta[property="me2:post_body"]')

          result_body = ''
          post_body.each do|node|
            result_body = node.attributes['content'].value 
          end

          Plugin.activity :system, " - " + title + " : " + uri + "\n" + result_body
        end
      end
    }
    [service, msgs]
  end
end

