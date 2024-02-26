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

ActiveRecord::Schema[7.1].define(version: 2024_02_20_160404) do
  create_table "matches", force: :cascade do |t|
    t.integer "resource_id"
    t.integer "need_id"
    t.integer "type_id"
    t.index ["need_id"], name: "index_matches_on_need_id"
    t.index ["resource_id"], name: "index_matches_on_resource_id"
    t.index ["type_id"], name: "index_matches_on_type_id"
  end

  create_table "needs", force: :cascade do |t|
    t.string "name"
    t.integer "type_id"
    t.datetime "begin_date", null: false
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "long_description"
    t.index ["type_id"], name: "index_needs_on_type_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.integer "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_resources_on_type_id"
  end

  create_table "supertypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.integer "supertype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supertype_id"], name: "index_types_on_supertype_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.integer "organization_id"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "types", "supertypes"
end
