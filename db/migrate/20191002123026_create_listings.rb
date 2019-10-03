class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
	  	t.string :address
		t.decimal :price
		t.integer :bedrooms
	end
  end
end
