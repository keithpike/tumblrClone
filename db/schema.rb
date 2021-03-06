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

ActiveRecord::Schema.define(version: 20140526185929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: true do |t|
    t.integer  "owner_id",                                null: false
    t.string   "title",       default: "Blog Title Here"
    t.string   "url"
    t.string   "description"
    t.string   "avatar_url"
    t.boolean  "primary",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogs", ["owner_id"], name: "index_blogs_on_owner_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "blog_id"
    t.string   "title"
    t.string   "media_url"
    t.string   "description"
    t.string   "post_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "caption"
    t.string   "url"
  end

  create_table "users", force: true do |t|
    t.string   "username",        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",           null: false
    t.string   "session_token"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
