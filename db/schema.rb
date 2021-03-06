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

ActiveRecord::Schema.define(version: 2018_09_20_035817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labelings", force: :cascade do |t|
    t.integer "label_id"
    t.integer "task_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "label_name", limit: 500, default: "", null: false
    t.bigint "task_id"
    t.index ["task_id"], name: "index_labels_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title", limit: 500, default: "", null: false
    t.text "content", default: "", null: false
    t.date "limit_time", null: false
    t.integer "status", null: false
    t.string "priority_color", null: false
    t.datetime "created_on"
    t.bigint "user_id"
    t.index ["title", "status"], name: "index_tasks_on_title_and_status"
    t.index ["title"], name: "index_tasks_on_title"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 500, default: "", null: false
    t.string "email", limit: 500, default: "", null: false
    t.string "password_digest", limit: 500, default: "", null: false
    t.boolean "admin"
  end

  add_foreign_key "labels", "tasks"
  add_foreign_key "tasks", "users"
end
