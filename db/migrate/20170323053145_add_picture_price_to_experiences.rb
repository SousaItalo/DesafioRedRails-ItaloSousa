class AddPicturePriceToExperiences < ActiveRecord::Migration[5.0]
  def change
  	add_column :experiences, :price, :string
  	add_column :experiences, :picture, :string
  end
end
