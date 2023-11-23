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

ActiveRecord::Schema[7.0].define(version: 2023_11_14_083243) do
  create_table "championships", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id", null: false
    t.integer "continent_id"
    t.index ["continent_id"], name: "index_championships_on_continent_id"
    t.index ["country_id"], name: "index_championships_on_country_id"
  end

  create_table "championships_teams", force: :cascade do |t|
    t.integer "championship_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["championship_id"], name: "index_championships_teams_on_championship_id"
    t.index ["team_id"], name: "index_championships_teams_on_team_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "continent_id"
    t.index ["continent_id"], name: "index_countries_on_continent_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "shirt_number"
    t.integer "market_value"
    t.float "height"
    t.float "weight"
    t.string "preferred_foot"
    t.integer "goals"
    t.integer "assists"
    t.integer "yellow_cards"
    t.integer "red_cards"
    t.integer "goals_suffered"
    t.integer "clean_sheets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id", null: false
    t.integer "position_id", null: false
    t.integer "country_id", null: false
    t.string "avatar"
    t.index ["country_id"], name: "index_players_on_country_id"
    t.index ["position_id"], name: "index_players_on_position_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "stadium"
    t.integer "stadium_capacity"
    t.integer "trophies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id", null: false
    t.string "avatar"
    t.index ["country_id"], name: "index_teams_on_country_id"
  end

  add_foreign_key "championships", "continents"
  add_foreign_key "championships", "countries"
  add_foreign_key "championships_teams", "championships"
  add_foreign_key "championships_teams", "teams"
  add_foreign_key "countries", "continents"
  add_foreign_key "players", "countries"
  add_foreign_key "players", "positions"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "countries"
end
