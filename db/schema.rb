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

ActiveRecord::Schema.define(version: 20170817093052) do

  create_table "batches", force: :cascade do |t|
    t.string   "name"
    t.integer  "fee",        limit: 8
    t.date     "demo"
    t.integer  "duration"
    t.date     "start_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses_institutes", force: :cascade do |t|
    t.integer "courses_id"
    t.integer "institutes_id"
  end

  add_index "courses_institutes", ["courses_id"], name: "index_courses_institutes_on_courses_id"
  add_index "courses_institutes", ["institutes_id"], name: "index_courses_institutes_on_institutes_id"

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.text     "decsription"
    t.integer  "contact",     limit: 8
    t.string   "mail_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "institutes", force: :cascade do |t|
    t.string   "name"
    t.string   "mailid"
    t.text     "address"
    t.integer  "contact",    limit: 8
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
