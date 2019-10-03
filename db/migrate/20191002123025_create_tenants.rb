class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
		t.string :name
		t.integer :salary
		t.integer :credit_score
	end
  end
end
