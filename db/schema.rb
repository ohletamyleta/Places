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

ActiveRecord::Schema.define(version: 2021_03_11_144618) do

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "costumes", force: :cascade do |t|
    t.integer "show_id"
    t.integer "actor_id"
    t.text "notes"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["actor_id"], name: "index_costumes_on_actor_id"
    t.index ["show_id"], name: "index_costumes_on_show_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.integer "tag_number"
    t.string "color"
    t.string "fabric"
    t.string "time_period"
    t.string "ok_to_alter"
    t.string "storage_location"
    t.string "cleaning_method"
    t.text "notes"
    t.string "waist"
    t.string "hip"
    t.string "shoulder_to_shoulder"
    t.string "chest"
    t.string "neck"
    t.string "neck_to_waist"
    t.string "waist_to_hem"
    t.string "sleeve_length"
    t.string "inseam"
    t.string "tag_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "start_date"
    t.string "end_date"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shows_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
