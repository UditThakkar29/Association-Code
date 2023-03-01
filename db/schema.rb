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

ActiveRecord::Schema[7.0].define(version: 2023_03_01_134631) do
  create_table "departments", force: :cascade do |t|
    t.string "dname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "university_id", null: false
    t.index ["university_id"], name: "index_departments_on_university_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "university_id", null: false
    t.integer "department_id", null: false
    t.index ["department_id"], name: "index_students_on_department_id"
    t.index ["university_id"], name: "index_students_on_university_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "departments", "universities"
  add_foreign_key "students", "departments"
  add_foreign_key "students", "universities"
end
