FactoryBot.define do
  factory :reserve do
    user_id { "MyString" }
    room_id { "MyString" }
    group { "MyString" }
    price { 1 }
    view { "2021-05-06" }
    start_date { "2021-05-06" }
  end
end
