class Listing < ActiveRecord::Base
	belongs_to :contract

	def self.view
		Listing.all.map { |listing| ["#{listing.address}", "#{listing.price}", "#{listing.bedrooms}", "#{listing.id}", listing.available] }
	end
end