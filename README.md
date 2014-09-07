# auto_shindanmaker 

診断メーカー自動投稿プラグイン

## Description

タイムラインに流れて来た診断メーカーを、自分のIDで診断したものを自動投稿します

診断結果はmikutterのシステムメッセージとしてタイムラインに流すので、他の人から見てTLを汚す事もありません

## Install

プラグインディレクトリに *auto\_shindanmaker/* というディレクトリ名でダウンロードします

    $ git clone https://github.com/ichigotake/mikutter-plugin-auto-shindanmaker ~/.mikutter/plugin/auto_shindanmaker

このプラグインは *mechanize* と *nokogiri* を利用しているので、依存モジュールをインストールする

    $ gem install nokogiri mechanize

## Changelog

[CHANGELOG.md](CHANGELOG.md)

## See also

- [mikutter](http://mikutter.hachune.net/)

- [診断メーカー自動投稿プラグイン作ったとこ #mikutter - diary ichigotake](http://ichigotake.hateblo.jp/entry/2013/05/25/100417)

## Author

[ichigotake](https://twitter.com/ichigotake)

## License

[MIT LICENSE](LICENSE)

