# hoteresi_app(ホテレジ)サービス概要

 "hoteresiは"レジデンスサービスを提供するホテルを探し、サービスを受けるためのアプリを模した
 ポートフォリオアプリです。
 ホテルレジデンスとは・・・ホテルの部屋に「住む」ように泊まる中長期滞在サービスのこと。

[gif](https://i.gyazo.com/5bde1f298ea6b9a7bd0ff7c29ee436a0.gif)

 ユーザーは流動的な時代だからこそ、「場所」にも縛られない暮らしを実現することができます。
 また、ホテルオーナーはこのコロナ禍の中で、空いている部屋を宿泊ルームではなく、賃貸ルームのように提供するこで、
 コンスタントな収益を得ることができます。
 また、ユーザーのニーズに合わせて部屋のコーディネートもホテル側で自由にすることができるため、ホテルならではのサービスをユーザーに提供する事ができます。

# 開発環境

Ruby '2.5.9'
Rails '6.1.3.1'

# ER図

[erd.pdf](https://github.com/Sateto-nao/hoteresi_app/files/6498971/erd.pdf)

# 導入技術

プラットフォーム（Heroku）
データベース（MySQL）
テスト（Rspec、Capybara、factory_bot）  *実装中
自動テスト＆自動デプロイ（Circleci）    *実装中
CSSフレームワーク（Bootstrap4.6）
コードチェック（rubocop_airbnb）
ユーザー登録＆ログイン（devise )
画像アップロード（carrierwave、mini_magick）
お気に入り機能（Ajax）
ページネーション（kaminari）            *実装中
検索（ransack）
住所登録（jp_prefecture）
郵便番号から自動入力（jquery.jpostal）
マップ（geocoder, 補助としてgon）

# コメント

ユーザーとホテルオーナー側は同じユーザーページで、実装しているため、同一のアカウントで
サービスを受けることも提供することもできます。

# アプリ画面

[hoteresi herokuapp com_about](https://user-images.githubusercontent.com/74028310/118610719-05614d00-b7f7-11eb-8c5c-2c9b4fc391d7.png)
