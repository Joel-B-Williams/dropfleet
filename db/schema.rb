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

ActiveRecord::Schema.define(version: 20170414135500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battlegroup_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "group_limit"
  end

  create_table "battlegroups", force: :cascade do |t|
    t.integer  "battlegroup_type_id"
    t.integer  "cost"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "fleet_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fleets", force: :cascade do |t|
    t.string   "name"
    t.integer  "faction_id"
    t.integer  "points_level"
    t.integer  "cost",         default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "ship_id"
    t.integer  "cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "group_size"
    t.integer  "battlegroup_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.string   "scan"
    t.string   "signature"
    t.string   "thrust"
    t.string   "hull"
    t.string   "armor"
    t.string   "point_defense"
    t.integer  "min_group_size"
    t.integer  "max_group_size"
    t.integer  "tonnage_id"
    t.integer  "faction_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "cost"
  end

  create_table "special_rules", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tonnages", force: :cascade do |t|
    t.string   "tonnage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "battlegroups", "fleets", name: "fleet_id"
  add_foreign_key "fleets", "users", name: "user_id"
  add_foreign_key "groups", "battlegroups", name: "battlegroup_id"
end
