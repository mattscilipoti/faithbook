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

ActiveRecord::Schema.define(version: 20150803215032) do

  create_table "comments", force: :cascade do |t|
    t.string  "full_name"
    t.string  "date_time"
    t.string  "content"
    t.string  "photo_url"
    t.integer "profile_id"
  end

  add_index "comments", ["profile_id"], name: "index_comments_on_profile_id"

  create_table "profiles", force: :cascade do |t|
    t.string "full_name"
    t.string "birth_date"
    t.string "education"
    t.string "about_me"
    t.string "photo_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end
