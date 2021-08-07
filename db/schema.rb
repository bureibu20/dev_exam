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

ActiveRecord::Schema.define(version: 2021_08_07_043942) do

  create_table "estates", force: :cascade do |t|
    t.text "name"
    t.integer "price"
    t.text "adress"
    t.integer "year"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "route"
    t.string "station_name"
    t.string "station_walk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "estate_id"
    t.index ["estate_id"], name: "index_stations_on_estate_id"
  end

end
