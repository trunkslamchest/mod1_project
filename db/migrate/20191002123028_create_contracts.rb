class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
		t.integer :user_id
		t.integer :listing_id
		t.integer :tenant_id
		t.integer :rent
		t.integer :duration
	end
  end
end
