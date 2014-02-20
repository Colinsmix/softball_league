# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140220174912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.integer  "hteam_score", null: false
    t.integer  "ateam_score", null: false
    t.integer  "hteam_id",    null: false
    t.integer  "ateam_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "position"
    t.string   "firstname",  null: false
    t.string   "lastname",   null: false
    t.integer  "team_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stat_lines", force: true do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.integer  "ab"
    t.integer  "single"
    t.integer  "double"
    t.integer  "triple"
    t.integer  "hr"
    t.integer  "bb"
    t.integer  "hbp"
    t.integer  "k"
    t.integer  "sac"
    t.integer  "rbi"
    t.integer  "sb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "nickname",   null: false
    t.string   "location",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
