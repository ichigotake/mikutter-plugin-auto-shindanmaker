# NAME

auto\_shindanmaker - 診断メーカー自動投稿プラグイン

# DESCRIPTION

タイムラインに流れて来た診断メーカーを、自分のIDで診断したものを自動投稿します

診断結果はmikutterのシステムメッセージとしてタイムラインに流すので、他の人から見てTLを汚す事もありません

# INSTALL

プラグインディレクトリに *auto\_shindanmaker/* というディレクトリ名でダウンロードします

    $ git clone https://github.com/ichigotake/mikutter-plugin-auto-shindanmaker ~/.mikutter/plugin/auto_shindanmaker

このプラグインは *mechanize* と *nokogiri* を利用しているので、依存モジュールをインストールする

    $ cd ~/.mikutter/plugin/auto_shindanmaker && bundle install
    
    # or

    $ cd ~/.mikutter/plugin/auto_shindanmaker && gem install nokogiri mechanize

# SEE ALSO

[mikutter](http://mikutter.hachune.net/)

[診断メーカー自動投稿プラグイン作ったとこ #mikutter - diary ichigotake](http://ichigotake.hateblo.jp/entry/2013/05/25/100417)

# AUTHOR

[@ichigotake](https://twitter.com/ichigotake)

