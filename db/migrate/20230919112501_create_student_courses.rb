class CreateStudentCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :student_courses do |t|
      t.string :student_id, limit: 11
      t.bigint :course_id

    end

    add_foreign_key :student_courses, :students, column: :student_id, primary_key: :id
    add_foreign_key :student_courses, :courses, column: :course_id, primary_key: :id

  end
end
