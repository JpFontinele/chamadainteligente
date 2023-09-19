class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects, id: false do |t|
      t.string :id, limit: 20, primary_key: true
      t.string :name, limit: 50
    end
  end
end
