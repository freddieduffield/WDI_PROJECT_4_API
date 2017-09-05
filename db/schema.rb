# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170905094701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "lat_lng", default: [], array: true
    t.text "description"
    t.text "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "period_id"
    t.index ["period_id"], name: "index_buildings_on_period_id"
    t.index ["user_id"], name: "index_buildings_on_user_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_favourites_on_building_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "image"
    t.bigint "user_id"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_materials_on_building_id"
    t.index ["user_id"], name: "index_materials_on_user_id"
  end

  create_table "periods", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "buildings", "periods"
  add_foreign_key "buildings", "users"
  add_foreign_key "favourites", "buildings"
  add_foreign_key "favourites", "users"
  add_foreign_key "materials", "buildings"
  add_foreign_key "materials", "users"
end
