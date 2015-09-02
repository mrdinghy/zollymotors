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

ActiveRecord::Schema.define(version: 20150829160846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "manufacturers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "manufacturer_id"
    t.integer  "stars_ease"
    t.integer  "stars_quality"
    t.integer  "stars_price"
    t.integer  "stars_ontime"
    t.integer  "stars_attention"
    t.date     "service_date"
    t.text     "review_note"
    t.boolean  "recommended"
    t.string   "car_model"
    t.integer  "car_year"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
  end

  create_table "searches", force: :cascade do |t|
    t.date     "search_start"
    t.date     "search_end"
    t.integer  "manufacturer_id"
    t.string   "car_model"
    t.integer  "car_year"
    t.boolean  "recommended"
    t.string   "search_text"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "startyear"
    t.integer  "startmonth"
    t.integer  "endyear"
    t.integer  "endmonth"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image_file"
    t.string   "service_icon"
  end

  create_table "siteblurbs", force: :cascade do |t|
    t.string   "name"
    t.text     "blurb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
