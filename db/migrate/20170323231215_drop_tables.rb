class DropTables < ActiveRecord::Migration[5.0]
  def change
  	drop_table :user_places
  	drop_table :users_places
  end
end
