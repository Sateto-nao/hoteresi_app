# hoteresi_app(ホテレジ)サービス概要

 "hoteresiは"レジデンスサービスを提供するホテルを探し、サービスを受けるためのアプリを模した
 ポートフォリオアプリです。
 ホテルレジデンスとは・・・ホテルの部屋に「住む」ように泊まる中長期滞在サービスのこと。

 <img src="https://user-images.githubusercontent.com/74028310/118803772-bd1d5a00-b8de-11eb-9e64-9df393ffba8b.png" width="600">

 ユーザーは流動的な時代だからこそ、「場所」にも縛られない暮らしを実現することができます。
 また、ホテルオーナーはこのコロナ禍の中で、空いている部屋を宿泊ルームではなく、賃貸ルームのように提供するこで、
 コンスタントな収益を得ることができます。
 また、ユーザーのニーズに合わせて部屋のコーディネートもホテル側で自由にすることができるため、ホテルならではのサービスをユーザーに提供する事ができます。

# 開発環境

Ruby '2.5.9'
Rails '6.1.3.1'

# ER図

<img src="https://i.gyazo.com/b3f278d7b632d3a641fb7862117b41dc.png" width="300">

# 導入技術

プラットフォーム（Heroku, AWS S3）
データベース（MySQL）
テスト（Rspec、Capybara、factory_bot）  *実装中
自動テスト＆自動デプロイ（Circleci）    *実装中
CSSフレームワーク（Bootstrap4.6）
コードチェック（rubocop_airbnb）
ユーザー登録＆ログイン（devise )
画像アップロード（carrierwave、mini_magick）
お気に入り機能（Ajax）
ページネーション（kaminari)
検索（ransack）
住所登録（jp_prefecture）
郵便番号から自動入力（jquery.jpostal.js）
マップ（geocoder, 補助としてgon）

# コメント

ユーザーとホテルオーナー側は同じユーザーページで、実装しているため、同一のアカウントで
サービスを受けることも提供することもできます。

# アプリ画面
about
<img src="https://user-images.githubusercontent.com/74028310/118610719-05614d00-b7f7-11eb-8c5c-2c9b4fc391d7.png" width="600">
sign_up
<img src="https://user-images.githubusercontent.com/74028310/118610719-05614d00-b7f7-11eb-8c5c-2c9b4fc391d7.png" width="600">
ホテル詳細
<img src="https://user-images.githubusercontent.com/74028310/118811461-01f9be80-b8e8-11eb-928b-127e7a9ae2ad.png" width="600">
ルーム詳細
<img src="https://user-images.githubusercontent.com/74028310/118811296-cc54d580-b8e7-11eb-93e3-9a2b7906aa28.png" width="600">
ルーム検索
<img src="https://user-images.githubusercontent.com/74028310/118811657-38cfd480-b8e8-11eb-8a86-defd319f32c1.png" width="600">
マイページ
<img src="https://user-images.githubusercontent.com/74028310/118811873-7a607f80-b8e8-11eb-9234-67a277ff7078.png" width="600">
