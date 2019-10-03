class Tenant < ActiveRecord::Base
	has_many :contracts
	has_many :users, through: :contracts

	def self.view
		Tenant.all.map { |tenant| ["#{tenant.name}", "#{tenant.salary}", "#{tenant.credit_score}", "#{tenant.id}", tenant.available] }
	end

end
