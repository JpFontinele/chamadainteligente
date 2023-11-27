class Changecodename < ActiveRecord::Migration[7.0]
  def change
    rename_column :courses, :code, :course_id
  end
end
