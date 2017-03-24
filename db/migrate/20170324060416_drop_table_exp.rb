class DropTableExp < ActiveRecord::Migration[5.0]
  def change
  	drop_table :exp_reservations
  	drop_table :experiences
  end
end
