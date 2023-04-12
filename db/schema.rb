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

ActiveRecord::Schema[7.0].define(version: 2023_04_12_002241) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "communities", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "church_number"
    t.bigint "state_id", null: false
    t.bigint "city_id", null: false
    t.bigint "neighborhood_id", null: false
    t.bigint "street_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_communities_on_city_id"
    t.index ["neighborhood_id"], name: "index_communities_on_neighborhood_id"
    t.index ["state_id"], name: "index_communities_on_state_id"
    t.index ["street_id"], name: "index_communities_on_street_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_neighborhoods_on_city_id"
    t.index ["state_id"], name: "index_neighborhoods_on_state_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexual_orientations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streets", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.bigint "city_id", null: false
    t.bigint "neighborhood_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_streets_on_city_id"
    t.index ["neighborhood_id"], name: "index_streets_on_neighborhood_id"
    t.index ["state_id"], name: "index_streets_on_state_id"
  end

  add_foreign_key "cities", "states"
  add_foreign_key "communities", "cities"
  add_foreign_key "communities", "neighborhoods"
  add_foreign_key "communities", "states"
  add_foreign_key "communities", "streets"
  add_foreign_key "neighborhoods", "cities"
  add_foreign_key "neighborhoods", "states"
  add_foreign_key "streets", "cities"
  add_foreign_key "streets", "neighborhoods"
  add_foreign_key "streets", "states"
end
