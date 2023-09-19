class Attendance < ApplicationRecord
  self.primary_key = :id
  belongs_to :course, foreign_key: 'course_id', primary_key: 'id'
  has_many :student_attendance, foreign_key: 'student_id', primary_key: 'id'
end
