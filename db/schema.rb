# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_17_194432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ticket_items", force: :cascade do |t|
    t.string "num1"
    t.string "num2"
    t.string "num3"
    t.string "num4"
    t.string "bxnum"
    t.string "stnum"
    t.string "lotnum"
    t.string "starnum"
    t.bigint "ticket_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ttype"
    t.index ["ticket_list_id"], name: "index_ticket_items_on_ticket_list_id"
  end

  create_table "ticket_lists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ticket_items", "ticket_lists"
end
