require_relative "../sleep_screens"

class User < ActiveRecord::Base
	has_many :contracts
	has_many :tenants, through: :contracts
	has_many :listings, through: :contracts

	def self.login

		puts

		print "Please Enter Your User Name:"
		username = gets.chomp

		puts

		password = TTY::Prompt.new.mask("Please Enter Your Password:")

		user_search = User.find_by(username: username, password: password)

		if user_search == nil

			login_error

			self.login

		else

			login_success

			user_search.main_menu

		end

	end



	def self.new_account

		print "Please Enter your Name:"
		name = gets.chomp

		puts

		print "Please Enter a User Name:"
		username = gets.chomp

		puts

		password = TTY::Prompt.new.mask("Please Enter a Password:")

		new_user = User.create(username: username, password: password, name: name)

		login_create

		new_user.main_menu

	end



	def main_menu

		self.reload

		system "clear"

		banner_main_menu

		puts "Currently logged in as: #{self.username}"

		TTY::Prompt.new.select("") do |menu|
			menu.choice "My Assets", -> {self.my_assets}
			menu.choice "View Available Tenants", -> { self.view_tenants_menu }
			menu.choice "View Available Listings", -> { self.view_listings_menu }
			menu.choice "Log Out", -> { self.log_out }
		end

	end



	def my_assets

		self.reload

		system 'clear'

		banner_my_assets

		TTY::Prompt.new.select("") do |menu|
			menu.choice "My Contracts", -> {self.my_contracts}
			menu.choice "My Tenants", -> { self.my_tenants }
			menu.choice "My Listings", -> { self.my_listings }
			menu.choice "", -> {self.my_contracts}
			menu.choice "Go Back", -> { self.main_menu }
		end

	end



	def my_contracts

		TTY::Prompt.new.select("") do |menu|

			contracts = self.contracts.map { |contract| ["#{self.tenants.find(contract.tenant_id).name}", "#{self.listings.find(contract.listing_id).address}", contract.rent, contract.duration, contract.id] }

			system 'clear'

			banner_my_contracts

			puts
			puts "YOU CURRENTLY HAVE #{contracts.length} CONTRACTS"
			puts

			contracts.each { |contract|

			menu.choice "#{contract[0]}", -> { self.contract_items(contract) }

			}
			menu.choice "", -> { self.my_contracts }
			menu.choice "Go Back", -> { self.my_assets }
		end

	end



	def contract_items(contract)

		system 'clear'

		puts
		puts "Your contract with: #{contract[0]}"
		puts

		puts "Name: " + "#{contract[0]}"
		puts "Address: " + "#{contract[1]}"
		puts "Rent: " + "$#{contract[2]}"
		puts "Duration: " + "#{contract[3]} months"
		puts

		TTY::Prompt.new.select("") do |menu|
			menu.choice "Update Contract", -> { self.setup_update(contract) }
			menu.choice "Evict", -> { self.setup_evict(contract) }
			menu.choice "Go Back", -> { self.my_contracts }
		end

	end



	def setup_update(contract)

		puts
		puts "What would you like to update about the contract with #{contract[0]}?"
		puts

		TTY::Prompt.new.select("") do |menu|
			menu.choice "Rent", -> { self.update_rent(contract) }
			menu.choice "Duration", -> { self.update_duration(contract) }
			menu.choice "Terminate Contract", -> { self.setup_evict }
			menu.choice "Go Back", -> { self.my_contracts }
		end

	end



	def update_rent(contract)

		puts

		update_rent = Contract.find(contract[4])

		puts "What do you want to change the rent to?"

		new_rent = gets.chomp

		update_rent.update(rent: new_rent)

		proccess_update_rent

		self.my_assets

	end



	def update_duration(contract)

		puts

		update_duration = Contract.find(contract[4])

		puts "How many months do you want to extend the contract with #{contract[0]} to?"

		new_duration = gets.chomp

		update_duration.update(duration: new_duration)

		process_update_duration

		self.my_assets

	end



	def setup_evict(contract)

		puts
		puts "Are you want to end the contract with #{contract[0]}?"
		puts
		puts "This will probably ruin #{contract[0]}'s life and make them homeless."

		TTY::Prompt.new.select("") do |menu|
			menu.choice "Do it.", -> { self.evict(contract) }
			menu.choice "lol jk", -> { self.my_contracts}
		end

	end

	def evict(contract)

		find_contract = Contract.find(contract[4])

		listing = Listing.find(find_contract.listing_id)
		listing.update(available: true)

		tenant = Tenant.find(find_contract.tenant_id)
		tenant.update(available: true)

		Contract.destroy(contract[4])

		process_evict

		self.my_assets

	end



	def my_tenants

		tenants = self.tenants.map { |tenant| [tenant.name, tenant.salary, tenant.credit_score] }

		system 'clear'

		banner_my_tenants

		puts
		puts "YOU CURRENTLY HAVE #{tenants.length} TENANTS"
		puts

		tenants.each { |tenant|

			puts
			puts "Name: " + "#{tenant[0]}"
			puts "Yearly Salary: " + "#{tenant[1]}"
			puts "Credit Score: " + "#{tenant[2]}"
			puts

		}

		TTY::Prompt.new.select("") do |menu|
			menu.choice "Go Back", -> { self.my_assets }
		end
	end



	def my_listings

		listings = self.listings.map { |listing| [listing.address, listing.price, listing.bedrooms] }

		system 'clear'

		banner_my_listings

		puts
		puts "YOU CURRENTLY HAVE #{listings.length} LISTINGS"
		puts

		listings.each { |listing|

			puts
			puts "Address: " + "#{listing[0]}"
			puts "Price: " + "#{listing[1]}"
			puts "Bedrooms: " + "#{listing[2]}"
			puts

		}

		TTY::Prompt.new.select("") do |menu|
			menu.choice "Go Back", -> { self.my_assets }
		end
	end



	def view_listings_menu

		system 'clear'

		banner_all_listings

	 	TTY::Prompt.new.select("") do |menu|

	 		Listing.view.each { |listing|

			 	address = listing[0]
				price = listing[1]
				bedrooms = listing[2]
				l_id = listing[3]
				available = listing[4]

				if available == true
					menu.choice "#{address}", -> {self.view_listings_item(address, price, bedrooms, l_id)}
				end
			}
		menu.choice "", -> {self.view_listings_menu}
		menu.choice "Go Back", -> { self.main_menu }

		end
	end



	def view_tenants_menu

		system "clear"

		banner_all_tenants

	 	TTY::Prompt.new.select("") do |menu|

	 		Tenant.view.each { |tenant|

			 	name = tenant[0]
				salary = tenant[1]
				credit_score = tenant[2]
				p_id = tenant[3]
				available = tenant[4]

				if available == true
					menu.choice "#{name}", -> {self.view_tenants_item(name, salary, credit_score, p_id)}
				end
			}
			menu.choice "", -> {self.view_tenants_menu}
			menu.choice "Go Back", -> { self.main_menu }

		end

	end



	def view_listings_item(address, price, bedrooms, l_id)

		system "clear"

		banner_listing_information

		puts
		puts "Address: " +  address
		puts "Price: " + price
		puts "Bedrooms: " + bedrooms

		TTY::Prompt.new.select("") do |menu|
			menu.choice "Create Contract at #{address}", -> { self.setup_contract_listing(l_id) }
			menu.choice "Go Back", -> { self.view_listings_menu }
		end

	end



	def view_tenants_item(name, salary, credit_score, p_id)

		system "clear"

		banner_tenant_information

		puts

		puts "Name: " + name
		puts "Salary: " + salary
		puts "Credit Score: " + credit_score

		puts

		TTY::Prompt.new.select("") do |menu|

			menu.choice "Create Contract with #{name}", -> { self.setup_contract_tenant(p_id) }
			menu.choice "Go Back", -> { self.view_tenants_menu }

		end

	end



	def setup_contract_listing(l_id)

		puts

		TTY::Prompt.new.select("Select a tenant to sign a contract with") do |menu|

			 Tenant.view.each { |tenant|

			 	name = tenant[0]
				salary = tenant[1]
				credit_score = tenant[2]
				p_id = tenant[3]
				available = tenant[4]

				if available == true
					menu.choice "#{name}", -> {self.sign_contract(l_id, p_id)}
				end
				}
			menu.choice "Go Back", -> {self.view_listings_menu}

		end

	end



	def setup_contract_tenant(p_id)

		puts

		TTY::Prompt.new.select("Select a listing to sign a contract") do |menu|

	 		Listing.view.each { |listing|

			 	address = listing[0]
				price = listing[1]
				bedrooms = listing[2]
				l_id = listing[3]
				available = listing[4]

				if available == true
					menu.choice "#{address}", -> {self.sign_contract(l_id, p_id)}
				end
				}
			menu.choice "Go Back", -> {self.view_tenants_menu}

		end

	end



	def sign_contract(l_id, p_id)

		puts

		puts "How much do you want to set the rent at?"
		rent_amount = gets.chomp

		puts

		puts "How long do you want the contract to be?"
		duration_length = gets.chomp

		contract = Contract.create(user_id: self.id, listing_id: l_id, tenant_id: p_id, rent: rent_amount, duration: duration_length )

		listing = Listing.find(contract.listing_id)
		listing.update(available: false)

		tenant = Tenant.find(contract.tenant_id)
		tenant.update(available: false)

		process_sign_contract

		self.main_menu

	end



	def log_out

		interface = Interface.new

		system 'clear'

		banner_main_menu

		logout

		interface.welcome()

	end



	def self.app_exit

		system 'clear'

		loading_app_exit

		exit

	end


end