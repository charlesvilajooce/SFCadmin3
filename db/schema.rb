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

ActiveRecord::Schema.define(version: 20170328181502) do

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "level"
    t.string   "surname"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.date     "birthday"
    t.text     "parents",               limit: 65535
    t.string   "photo_url"
    t.boolean  "injured"
    t.text     "injury_archive",        limit: 65535
    t.boolean  "suspended"
    t.text     "cards_archive",         limit: 65535
    t.integer  "role"
    t.string   "school"
    t.text     "school_archive",        limit: 65535
    t.text     "physic_char",           limit: 65535
    t.integer  "playtime"
    t.date     "arriving_date"
    t.date     "endcontrat_date"
    t.text     "sportactivity_archive", limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "avatar"
  end

end
