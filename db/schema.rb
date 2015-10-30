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

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "title"
    t.string   "amazon_id"
    t.string   "url"
    t.integer  "quantity"
    t.float    "price"
    t.float    "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "image"
    t.string   "contact_phone"
    t.string   "population_served"
    t.integer  "annual_funding"
    t.integer  "number_served"
    t.string   "shipping_address_1"
    t.string   "shipping_address_2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.integer  "shipping_postal_code"
    t.integer  "karma",                default: 0
    t.string   "approval_status",      default: "pending"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "project_status",       default: "pending"
    t.string   "funding_status",       default: "not funded"
    t.string   "shipping_status",      default: "awaiting project completion"
    t.float    "subtotal"
    t.float    "processing_fees"
    t.float    "total_donated",        default: 0.0
    t.float    "total_remaining"
    t.float    "total_requested"
    t.text     "organization_details"
    t.text     "project_details"
    t.datetime "expires_on",           default: '2016-01-30 20:03:58'
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.boolean  "donor",             default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "bio"
    t.string   "approval_status", default: "pending"
    t.string   "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
