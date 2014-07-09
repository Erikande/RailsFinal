class RemovePlayAddressFromUserPlaces < ActiveRecord::Migration
  def change
    remove_column :user_places, :play_address, :string
  end
end
