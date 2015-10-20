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

ActiveRecord::Schema.define(version: 20151020181959) do

  create_table "gifts", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "amount"
    t.integer  "cc_number"
    t.string   "cc_name"
    t.date     "cc_exp"
    t.integer  "cc_ccv"
    t.string   "cc_address_1"
    t.string   "cc_address_2"
    t.string   "cc_city"
    t.string   "cc_state"
    t.intger   "cc_postal_code"
    t.string   "payment_status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "project_id"
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.integer  "quantity"
    t.float    "price_per"
    t.float    "total_cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "contact_phone"
    t.string   "population_served"
    t.integer  "annual_funding"
    t.integer  "number_served"
    t.string   "shipping_address_1"
    t.string   "shipping_address_2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.integer  "shipping_postal_code"
    t.integer  "karma"
    t.string   "approved"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "title"
    t.text     "description"
    t.string   "project_approval"
    t.string   "funding_status"
    t.string   "shipping_status"
    t.float    "total"
    t.text     "essay"
    t.datetime "created_at",       null: false
    t.date     "expires_on"
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.boolean  "donor",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "bio"
    t.string   "approved"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end