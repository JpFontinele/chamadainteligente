class Teacher < ApplicationRecord
  self.primary_key = :id
  has_many :course, foreign_key: 'teacher_id', primary_key: 'id'
end
