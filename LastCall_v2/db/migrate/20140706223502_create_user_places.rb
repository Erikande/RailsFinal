class CreateUserPlaces < ActiveRecord::Migration
  def change
    create_table :user_places do |t|
      t.string :home_address
      t.string :work_address
      t.string :play_address
      t.references :user, index: true

      t.timestamps
    end
  end
end
