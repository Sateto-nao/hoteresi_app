FactoryBot.define do
  factory :hotel do
    association :user
    sequence(:hotel_name) { |n| "hotel#{n}" }
    sequence(:email) { |n| "test#{n}@example.com" }
    sequence(:tell) { |n| "0#{n}012341234" }
    postcode { 2610021 }
    prefecture_code { 12 }
    address_city { "千葉市美浜区ひび野" }
    address_street { "2-3" }
    sequence(:address_building) { |n| "hotel#{n}" }
    preview {"1"}
    contract {"1"}
    parking {"1"}
    facility {
    "-施設紹介-
    ビュッフェレストラン「〇〇」（1F）
    営業時間：7:00〜20:00 　※19時以降の酒類提供を控えさせて頂きます。
    カフェレストラン「〇〇」（1F）
    営業時間：11:00〜20:00 　※19時以降の酒類提供を控えさせて頂きます。
    バーラウンジ「〇〇」（22F）
    営業時間：11:00〜21:00 　※20時以降の酒類提供を控えさせて頂きます。
    宴会・会議「〇〇ホール」（3F）
    詳細はホテル公式HPまで　URL:https://hoteresi.herokuapp.com
    大浴場「〇〇の湯」（4F）
    営業時間：6:00〜10:00、15:00〜26:00
    コンビニ「〇〇」（2F）
    営業時間：24時間
    -周辺情報-
    コンビニ　徒歩3分
    〇〇駅　徒歩5分
    コインランドリー　徒歩6分
    スーパーマーケット　徒歩15分
    〇〇モール　徒歩20分
    観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車" }
    introduction {
    "〇〇線〇〇駅　徒歩5分
    〇〇線〇〇駅　徒歩10分
    〇〇高速道路　〇〇IC　〇〇方面へ15分
    駅からのアクセスがしやすい好立地なホテルです。
    周辺にも商業施設が多く、快適な暮らしができる環境が整っています。" }
    end
  end
