class Contract < ActiveRecord::Base
	belongs_to :tenant
	belongs_to :user
	belongs_to :listing

	def self.view
		Contract.all.map { |contract| ["#{contract.user_id}", "#{contract.listing_id}", "#{contract.tenant_id}", "#{contract.rent}", "#{contract.duration}"] }
	end

end