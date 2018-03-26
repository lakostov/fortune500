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

ActiveRecord::Schema.define(version: 20180326160129) do

  create_table "companies", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.string "web"
    t.integer "employees"
    t.string "city"
    t.string "zip"
    t.string "tel"
    t.string "ceo"
    t.string "ceo_title"
    t.string "ticker"
    t.string "full_name"
    t.float "revenue"
    t.float "revchange"
    t.float "profit"
    t.float "profchange"
    t.float "assets"
    t.float "totshequity"
    t.float "market_value"
    t.string "lat"
    t.string "long"
    t.integer "sector_id"
    t.integer "industry_id"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rank2016"
    t.integer "rank2015"
    t.integer "rank2014"
    t.integer "rank2013"
    t.integer "rank2012"
    t.integer "rank2011"
    t.integer "rank2010"
    t.integer "rank2009"
    t.integer "rank2008"
    t.string "address"
    t.index ["industry_id"], name: "index_companies_on_industry_id"
    t.index ["sector_id"], name: "index_companies_on_sector_id"
    t.index ["state_id"], name: "index_companies_on_state_id"
  end

  create_table "fortune2008s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2009s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2010s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2011s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2012s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2013s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2014s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2015s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.float "revenue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fortune2016s", force: :cascade do |t|
    t.integer "rank"
    t.string "name"
    t.string "symbol"
    t.float "revenue"
    t.string "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abrv"
    t.integer "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
