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

ActiveRecord::Schema[8.0].define(version: 2025_06_07_190742) do
  create_table "attendees", force: :cascade do |t|
    t.string "first_name"
    t.string "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gift_exchange_id", null: false
    t.index ["gift_exchange_id"], name: "index_attendees_on_gift_exchange_id"
  end

  create_table "gift_exchanges", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attendees", "gift_exchanges"
end
