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

ActiveRecord::Schema.define(version: 2020_06_11_034214) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer "difficulty"
    t.string "label"
    t.string "color"
    t.integer "system_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["system_id"], name: "index_grades_on_system_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_gyms_on_company_id"
  end

  create_table "hold_colors", force: :cascade do |t|
    t.string "colorName"
    t.string "color"
    t.integer "gym_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_hold_colors_on_gym_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "hold_color"
    t.string "grade"
    t.string "setters"
    t.integer "is_set"
    t.integer "sett_id", null: false
    t.integer "wall_id", null: false
    t.integer "gym_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_routes_on_gym_id"
    t.index ["sett_id"], name: "index_routes_on_sett_id"
    t.index ["wall_id"], name: "index_routes_on_wall_id"
  end

  create_table "setts", force: :cascade do |t|
    t.integer "gym_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_setts_on_gym_id"
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.integer "gym_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_systems_on_gym_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  create_table "walls", force: :cascade do |t|
    t.string "name"
    t.string "wall_type"
    t.integer "gym_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_walls_on_gym_id"
  end

  add_foreign_key "grades", "systems"
  add_foreign_key "gyms", "companies"
  add_foreign_key "routes", "gyms"
  add_foreign_key "routes", "setts"
  add_foreign_key "routes", "walls"
  add_foreign_key "setts", "gyms"
  add_foreign_key "systems", "gyms"
  add_foreign_key "walls", "gyms"
end
