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

ActiveRecord::Schema.define(version: 20191209040350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "Make"
    t.string   "Model"
    t.integer  "Year"
    t.integer  "Number_of_seats"
    t.string   "License_plate"
  end

  create_table "drivers", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "Name"
    t.string   "Phone"
    t.integer  "number_passengers"
  end

  create_table "rider_applications", force: :cascade do |t|
    t.string   "Name"
    t.string   "Phone"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "street_address"
    t.integer  "zip_code"
    t.string   "city"
    t.integer  "number_passengers"
    t.datetime "application_received"
    t.string   "ride_status"
    t.text     "notes"
    t.string   "driver_name"
  end

  create_table "rides", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "uin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "license_plate"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
