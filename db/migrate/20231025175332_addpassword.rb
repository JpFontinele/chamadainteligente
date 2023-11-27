class Addpassword < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :password, :string, limit: 20
    add_column :teachers, :password, :string, limit: 20
    add_column :attendances, :classroom, :string, limit: 10
    remove_column :courses, :classroom
  end
end
