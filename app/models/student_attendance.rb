class StudentAttendance < ApplicationRecord
  self.primary_key = :id
  belongs_to :attendance, foreign_key: 'attendance_id', primary_key: 'id'
  belongs_to :student, foreign_key: 'student_id', primary_key: 'id'
end
