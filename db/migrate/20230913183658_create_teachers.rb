class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers, id: false do |t|
      t.string :id, limit: 11, primary_key: true
      t.string :name, limit: 30

    end
  end
end
