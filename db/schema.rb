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

ActiveRecord::Schema.define(version: 20150710053105) do

  create_table "books", force: :cascade do |t|
    t.string   "bname",      limit: 255
    t.string   "author1",    limit: 255
    t.string   "author2",    limit: 255
    t.integer  "prize",      limit: 4
    t.integer  "nobooks",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bcomments",  limit: 255
    t.integer  "bfollowers", limit: 4
  end

  create_table "test", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "salary",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
