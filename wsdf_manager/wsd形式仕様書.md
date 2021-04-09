# wsd 形式仕様書

正式名称: Wikipedia Style Discussions Format  
拡張子: .wsd  
説明: 議事録形式

## 記法

## wsdf Manager

wsdf local: ローカルでの wsd ファイルの直接編集のためのモジュール。wsd ファイルの変更を監視し、署名等のショートカット記法の正規化を行うほか、差分を記録する。コマンドラインにおける wsd ファイルの作成や監視対象の登録を提供する。

wsdf viewer: web その他 GUI にて wsd ファイルを閲覧・編集するためのモジュール。
wsdf perser: wsd ファイルを html ファイルや xml ファイル、md ファイルなどの形式にパースする。
