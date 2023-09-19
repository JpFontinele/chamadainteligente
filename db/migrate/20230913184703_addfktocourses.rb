class Addfktocourses < ActiveRecord::Migration[7.0]
  def change

    add_column :courses, :teacher_id, :string, limit: 11
    add_column :courses, :classroom, :integer
    add_column :courses, :subject_id, :bigint

  end
end
