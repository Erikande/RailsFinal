class AddUserPlacesIdToUsers < ActiveRecord::Migration
  def change
  	add_column :user_places, :user_id, :integer

  end
end
