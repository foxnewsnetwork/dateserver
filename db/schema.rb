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

ActiveRecord::Schema.define(version: 20130628153717) do

  create_table "posts", force: true do |t|
    t.integer "user_id"
    t.integer "thread_id"
    t.string  "content"
  end

  create_table "tag_tag_relationships", force: true do |t|
    t.integer "parent_id"
    t.integer "child_id"
  end

  create_table "tag_thread_relationships", force: true do |t|
    t.integer "tag_id"
    t.integer "thread_id"
  end

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "threads", force: true do |t|
    t.integer "user_id"
    t.string  "title"
  end

  create_table "users", force: true do |t|
    t.string "ip"
    t.string "browser"
    t.string "os"
  end

end
