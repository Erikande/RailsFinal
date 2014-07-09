class RemoveHomeAddressFromUserPlaces < ActiveRecord::Migration
  def change
    remove_column :user_places, :home_address, :string
  end
end
