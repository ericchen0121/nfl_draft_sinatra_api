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

ActiveRecord::Schema.define(version: 20140404230149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_versions", force: true do |t|
    t.string   "author"
    t.integer  "version"
    t.datetime "date_published"
    t.string   "url"
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "draft_picks", force: true do |t|
    t.integer  "overall_pick"
    t.integer  "round"
    t.integer  "round_pick"
    t.integer  "point_value"
    t.boolean  "compensatory"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "mockdrafts", force: true do |t|
    t.integer  "author_version_id"
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "overall_pick"
    t.text     "commentary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "division"
  end

end
