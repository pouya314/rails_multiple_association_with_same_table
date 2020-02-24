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

ActiveRecord::Schema.define(version: 2020_02_24_053320) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "money_movements", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2
    t.integer "from_account_id"
    t.integer "to_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["from_account_id"], name: "index_money_movements_on_from_account_id"
    t.index ["to_account_id"], name: "index_money_movements_on_to_account_id"
  end

  add_foreign_key "money_movements", "accounts", column: "from_account_id"
  add_foreign_key "money_movements", "accounts", column: "to_account_id"
end
