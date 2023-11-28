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

ActiveRecord::Schema[7.0].define(version: 2023_11_27_133252) do
  create_table "attendances", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "course_id"
    t.string "classroom", limit: 10
    t.float "localizationx"
    t.float "localizationy"
    t.index ["course_id"], name: "fk_rails_2fe8e02b1e"
  end

  create_table "courses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "semester", limit: 5
    t.string "course_id", limit: 2
    t.string "teacher_id", limit: 11
    t.string "subject_id", limit: 20
    t.index ["subject_id"], name: "fk_rails_57d52eb461"
    t.index ["teacher_id"], name: "fk_rails_a68eff6aff"
  end

  create_table "student_attendances", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "student_id", limit: 11
    t.bigint "attendance_id"
    t.string "status", limit: 1
    t.string "comment"
    t.index ["attendance_id"], name: "fk_rails_e40214a848"
    t.index ["student_id"], name: "fk_rails_f1607dbb2a"
  end

  create_table "student_courses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "student_id", limit: 11
    t.bigint "course_id"
    t.index ["course_id"], name: "fk_rails_fee459e6de"
    t.index ["student_id"], name: "fk_rails_aab11897f1"
  end

  create_table "students", id: { type: :string, limit: 11 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 30
    t.string "password", limit: 20
  end

  create_table "subjects", id: { type: :string, limit: 20 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 50
  end

  create_table "teachers", id: { type: :string, limit: 11 }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 30
    t.string "password", limit: 20
  end

  add_foreign_key "attendances", "courses"
  add_foreign_key "courses", "subjects"
  add_foreign_key "courses", "teachers"
  add_foreign_key "student_attendances", "attendances"
  add_foreign_key "student_attendances", "students"
  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
end
