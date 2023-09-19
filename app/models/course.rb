class Course < ApplicationRecord
  self.primary_key = :id
  belongs_to :subject, foreign_key: 'subject_id', primary_key: 'id'
  belongs_to :teacher, foreign_key: 'teacher_id', primary_key: 'id'
  has_many :attendance, foreign_key: 'course_id', primary_key: 'id'
  has_many :student_course, foreign_key: 'course_id', primary_key: 'id'
end
