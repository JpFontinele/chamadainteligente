class Student < ApplicationRecord
  self.primary_key = :id
  has_many :student_attendance, foreign_key: 'student_id', primary_key: 'id'
  has_many :student_course, foreign_key: 'student_id', primary_key: 'id'
end
