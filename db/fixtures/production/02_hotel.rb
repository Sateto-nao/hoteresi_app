Hotel.seed do |s|
s.id = 1
s.user = User.find_by(name: "Guest")
s.hotel_name = 'hotel1'
s.tell = '11111111111'
s.email = 'hotel1@example.com'
s.postcode = 2610021
s.prefecture_code = 12
s.address_city = "千葉市美浜区ひび野"
s.address_street = "2-3"
s.address_building = "hotel1"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "1"
s.contract = "1"
s.parking = "1"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel1.jpg").open
end

Hotel.seed do |s|
s.id = 2
s.user = User.find_by(name: "Guest")
s.hotel_name = 'hotel2'
s.tell = '22222222222'
s.email = 'hotel2@example.com'
s.postcode = 1070052
s.prefecture_code = 13
s.address_city = "港区赤坂"
s.address_street = "3丁目19番地10号"
s.address_building = "hotel2"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "1"
s.contract = "1"
s.parking = "2"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel2.jpg").open
end

Hotel.seed do |s|
s.id = 3
s.user = User.find_by(name: "name2")
s.hotel_name = 'hotel3'
s.tell = '33333333333'
s.email = 'hotel3@example.com'
s.postcode = 1350016
s.prefecture_code = 13
s.address_city = "江東区東陽"
s.address_street = "1-16-16"
s.address_building = "hotel3"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "2"
s.contract = "2"
s.parking = "1"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel3.jpg").open
end

Hotel.seed do |s|
s.id = 4
s.user = User.find_by(name: "name2")
s.hotel_name = 'hotel4'
s.tell = '44444444444'
s.email = 'hotel4@example.com'
s.postcode = 8100041
s.prefecture_code = 40
s.address_city = "福岡市中央区大名"
s.address_street = "1-9-39"
s.address_building = "hotel4"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "1"
s.contract = "2"
s.parking = "2"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel4.jpg").open
end

Hotel.seed do |s|
s.id = 5
s.user = User.find_by(name: "name3")
s.hotel_name = 'hotel5'
s.tell = '55555555555'
s.email = 'hotel5@example.com'
s.postcode = 7320822
s.prefecture_code = 34
s.address_city = "広島市南区松原町"
s.address_street = "10-11"
s.address_building = "hotel5"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "2"
s.contract = "2"
s.parking = "1"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel5.jpg").open
end

Hotel.seed do |s|
s.id = 6
s.user = User.find_by(name: "name4")
s.hotel_name = 'hotel6'
s.tell = '66666666666'
s.email = 'hotel6@example.com'
s.postcode = 5500001
s.prefecture_code = 27
s.address_city = "大阪市西区土佐堀"
s.address_street = "1丁目2-1"
s.address_building = "hotel6"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "2"
s.contract = "2"
s.parking = "2"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel6.jpg").open
end

Hotel.seed do |s|
s.id = 7
s.user = User.find_by(name: "name4")
s.hotel_name = 'hotel7'
s.tell = '77777777777'
s.email = 'hotel7@example.com'
s.postcode = 6008216
s.prefecture_code = 26
s.address_city = "京都市下京区東塩小路町"
s.address_street = "552-1"
s.address_building = "hotel7"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "1"
s.contract = "1"
s.parking = "1"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel7.jpg").open
end

Hotel.seed do |s|
s.id = 8
s.user = User.find_by(name: "name5")
s.hotel_name = 'hotel8'
s.tell = '88888888888'
s.email = 'hotel8@example.com'
s.postcode = 9200031
s.prefecture_code = 17
s.address_city = "金沢市広岡"
s.address_street = "1-9-28"
s.address_building = "hotel8"
s.facility =
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
観光名所「〇〇」〇〇駅から10分〇〇方面〇〇駅で下車"
s.introduction = "〇〇線〇〇駅　徒歩5分
〇〇線〇〇駅　徒歩10分
〇〇高速道路　〇〇IC　〇〇方面へ15分

駅からのアクセスがしやすい好立地なホテルです。
周辺にも商業施設が多く、快適な暮らしができる環境が整っています。"
s.preview = "1"
s.contract = "1"
s.parking = "1"
s.hotel_img = Rails.root.join("db/fixtures/hotel_image/hoteresi_hotel8.jpg").open
end
