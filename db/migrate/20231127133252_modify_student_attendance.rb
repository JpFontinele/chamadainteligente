class ModifyStudentAttendance < ActiveRecord::Migration[7.0]
  def change
    remove_column :student_attendances, :start_time
    remove_column :student_attendances, :end_time
    add_column :student_attendances, :status, :string, limit: 1
    add_column :student_attendances, :comment, :string
  end
end
