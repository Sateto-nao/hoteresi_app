# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_18_001952) do

  create_table "contacts", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "room_id"
    t.index ["room_id"], name: "index_favorites_on_room_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "hotels", charset: "utf8mb4", force: :cascade do |t|
    t.string "hotel_name"
    t.text "introduction"
    t.string "tell"
    t.string "room_id"
    t.string "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "postcode"
    t.integer "prefecture_code"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.string "email"
    t.string "hotel_img"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.text "facility"
    t.string "preview"
    t.string "contract"
    t.string "parking"
    t.index ["email"], name: "index_hotels_on_email", unique: true
  end

  create_table "reserves", charset: "utf8mb4", force: :cascade do |t|
    t.string "user_id"
    t.string "room_id"
    t.string "group"
    t.date "preview"
    t.date "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "notes"
    t.string "how_preview"
    t.string "how_contract"
    t.date "contract"
    t.bigint "contact_id"
    t.index ["contact_id"], name: "index_reserves_on_contact_id"
  end

  create_table "rooms", charset: "utf8mb4", force: :cascade do |t|
    t.string "room_name"
    t.text "introduction"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "hotel_id"
    t.string "user_id"
    t.string "room_img"
    t.string "group"
    t.string "smoke"
    t.text "amenity"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "birthday"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "rooms"
  add_foreign_key "favorites", "users"
  add_foreign_key "reserves", "contacts"
end
