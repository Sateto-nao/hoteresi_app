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

ActiveRecord::Schema.define(version: 2021_05_06_110033) do

  create_table "favorites", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "room_id"
    t.index ["room_id"], name: "index_favorites_on_room_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "hotels", charset: "utf8mb4", force: :cascade do |t|
    t.string "hotel_name", limit: 255
    t.text "introduction"
    t.string "tell", limit: 255
    t.string "room_id", limit: 255
    t.string "user_id", limit: 255
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "postcode"
    t.string "prefecture_code"
    t.string "address_city", limit: 255
    t.string "address_street", limit: 255
    t.string "address_building", limit: 255
    t.string "email", limit: 255
    t.string "hotel_img", limit: 255
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["email"], name: "index_hotels_on_email", unique: true
  end

  create_table "reserves", charset: "utf8mb4", force: :cascade do |t|
    t.string "user_id"
    t.string "room_id"
    t.string "group"
    t.integer "price"
    t.date "view"
    t.date "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "notes"
  end

  create_table "rooms", charset: "utf8mb4", force: :cascade do |t|
    t.string "room_name", limit: 255
    t.text "introduction"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "hotel_id", limit: 255
    t.string "user_id", limit: 255
    t.string "room_img", limit: 255
    t.string "group"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.string "name", limit: 255
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "birthday"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "rooms"
  add_foreign_key "favorites", "users"
end
