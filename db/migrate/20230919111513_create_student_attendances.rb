class CreateStudentAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :student_attendances do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :student_id, limit: 11
      t.bigint :attendances_id

    end

    add_foreign_key :student_attendances, :students, column: :student_id, primary_key: :id
    add_foreign_key :student_attendances, :attendances, column: :attendances_id, primary_key: :id

  end
end
