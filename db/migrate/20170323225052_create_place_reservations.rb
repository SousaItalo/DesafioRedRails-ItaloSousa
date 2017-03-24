class CreatePlaceReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :place_reservations do |t|
    	t.integer "user_id"
    	t.integer "place_id"
    	t.date "data_entrada"
    	t.date "data_saida"
    end
  end
end
