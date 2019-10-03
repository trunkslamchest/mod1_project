class UpdateTenants < ActiveRecord::Migration[5.2]
  def change
	add_column :tenants, :available, :boolean
  end
end
