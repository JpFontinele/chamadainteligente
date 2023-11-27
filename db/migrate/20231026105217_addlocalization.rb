class Addlocalization < ActiveRecord::Migration[7.0]
  def change
    add_column :attendances, :localizationx, :float
    add_column :attendances, :localizationy, :float

  end
end
