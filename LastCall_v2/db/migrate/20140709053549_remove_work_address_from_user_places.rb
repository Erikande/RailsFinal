class RemoveWorkAddressFromUserPlaces < ActiveRecord::Migration
  def change
    remove_column :user_places, :work_address, :string
  end
end
