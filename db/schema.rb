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

ActiveRecord::Schema.define(version: 2021_08_25_230146) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "requirement"
    t.integer "work_load"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "turmas_id"
    t.integer "students_id"
    t.date "registration_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["students_id"], name: "index_registrations_on_students_id"
    t.index ["turmas_id"], name: "index_registrations_on_turmas_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "CPF"
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.date "birth_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "hour_value"
    t.string "certificates"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.integer "course_id"
    t.integer "teacher_id"
    t.date "beginning_date"
    t.date "ending_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_turmas_on_course_id"
    t.index ["teacher_id"], name: "index_turmas_on_teacher_id"
  end

end
