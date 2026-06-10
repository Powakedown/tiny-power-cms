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

ActiveRecord::Schema[8.1].define(version: 2026_06_10_155138) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "elements", force: :cascade do |t|
    t.string "background_image"
    t.datetime "created_at", null: false
    t.string "image"
    t.string "placement"
    t.bigint "section_id", null: false
    t.string "text"
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_elements_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "layout"
    t.boolean "published"
    t.datetime "updated_at", null: false
  end

  create_table "tiny_power_cms_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.boolean "published", default: false, null: false
    t.string "title", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "elements", "sections"
end
