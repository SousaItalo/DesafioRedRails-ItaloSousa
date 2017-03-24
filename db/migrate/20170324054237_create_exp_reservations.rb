class CreateExpReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :exp_reservations do |t|
    	t.integer "user_id"
    	t.integer "experience_id"
    	t.date "data_entrada"
    	t.date "data_saida"
    end
  end
end
