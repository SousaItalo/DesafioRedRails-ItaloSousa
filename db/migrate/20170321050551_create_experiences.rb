class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
    	t.string :name
    	t.string :description
    	t.integer :people_qtd
    	t.string :country
    	t.string :city
    	t.integer :user_id
    	t.timestamps
    end
  end
end
