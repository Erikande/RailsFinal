class AddAddressToUserPlace < ActiveRecord::Migration
  def change
    add_column :user_places, :address, :string
  end
end
