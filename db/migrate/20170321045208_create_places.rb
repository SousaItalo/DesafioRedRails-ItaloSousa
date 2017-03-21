class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
    	t.string :name
    	t.string :description
    	t.integer :beds_qtd
    	t.string :country
    	t.string :city
    	t.timestamps
    end
  end
end
