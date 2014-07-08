class AddLatitudeAndLongitudeToUserPlace < ActiveRecord::Migration
  def change
    add_column :user_places, :latitude, :float
    add_column :user_places, :longitude, :float
  end
end
