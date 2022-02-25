class AddCoordinatesToSupers < ActiveRecord::Migration[6.1]
  def change
    add_column :supers, :latitude, :float
    add_column :supers, :longitude, :float
  end
end
