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

ActiveRecord::Schema.define(version: 20150707052550) do

  create_table "file_in_orders", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "order_id",   limit: 255
    t.string   "type",       limit: 255
    t.integer  "page",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number",     limit: 255
    t.string   "order_files_name", limit: 255
    t.float    "price",            limit: 24
    t.string   "order_state",      limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id",          limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.string   "name",              limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "sex",               limit: 255
    t.string   "remember_token",    limit: 255
    t.string   "password",          limit: 255
    t.integer  "age",               limit: 4
    t.string   "school",            limit: 255
    t.string   "major",             limit: 255
    t.integer  "quantity_of_users", limit: 4
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
