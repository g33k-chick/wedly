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

ActiveRecord::Schema.define(version: 20150520204353) do

  create_table "containers", force: :cascade do |t|
    t.integer  "limit"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "province"
    t.string   "zip"
    t.string   "country"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.integer  "wedding_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "guest_specs", force: :cascade do |t|
    t.integer  "container_id"
    t.integer  "food_choice"
    t.text     "food_restrictions"
    t.boolean  "rsvp"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "zip"
    t.string   "country"
    t.string   "province"
    t.string   "email"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.integer  "wedding_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "weddings", force: :cascade do |t|
    t.integer  "partner_1"
    t.integer  "partner_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end