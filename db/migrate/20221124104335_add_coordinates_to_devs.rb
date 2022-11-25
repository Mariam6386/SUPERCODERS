class AddCoordinatesToDevs < ActiveRecord::Migration[7.0]
  def change
    add_column :devs, :latitude, :float
    add_column :devs, :longitude, :float
  end
end
