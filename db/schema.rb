# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_26_095149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "timescaledb"

  create_table "bikes", force: :cascade do |t|
    t.string "model"
    t.string "reg_number"
    t.string "cc"
    t.string "price"
    t.boolean "booked"
    t.integer "owner_id"
    t.integer "rider_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "avatar"
    t.string "email"
    t.integer "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "riders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "avatar"
    t.string "email"
    t.string "phone_number"
    t.integer "id_number"
    t.string "license_number"
    t.string "spouse_contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
