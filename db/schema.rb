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

ActiveRecord::Schema.define(version: 20151024140834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "e_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_cat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "e_categories", ["parent_cat_id"], name: "index_e_categories_on_parent_cat_id", using: :btree

  create_table "e_infos", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "e_reviews", force: :cascade do |t|
    t.integer  "rating"
    t.string   "comment"
    t.integer  "e_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "e_tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "e_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
