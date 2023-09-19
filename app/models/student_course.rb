class StudentCourse < ApplicationRecord
  self.primary_key = :id
  belongs_to :course, foreign_key: 'course_id', primary_key: 'id'
  belongs_to :student, foreign_key: 'student_id', primary_key: 'id'
end
