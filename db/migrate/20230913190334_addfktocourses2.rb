class Addfktocourses2 < ActiveRecord::Migration[7.0]
  def change

    add_foreign_key :courses, :teachers, column: :teacher_id, primary_key: :id
    add_foreign_key :courses, :subjects, column: :subject_id, primary_key: :id

  end
end
