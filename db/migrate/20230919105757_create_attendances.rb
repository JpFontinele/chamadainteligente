class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.bigint :course_id

    end

    add_foreign_key :attendances, :courses, column: :course_id, primary_key: :id
  end
end
