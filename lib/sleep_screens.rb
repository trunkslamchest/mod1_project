require_relative "sleep_timers"

def loading_app_exit

	banner_title_screen

#   puts "|                         |                         |"
	puts
	system 'sleep 1'
	puts
	puts "              Closing down application...            "
	puts
	system 'sleep 1.5'
	puts
	puts "                Thank you and Goodbye                "
	puts
	system 'sleep 2'
	puts
end

def process_log_out

	puts
	system 'sleep 1'
	puts
#   puts "|                         |                         |"
	puts "                    Logging out...                   "
	puts
	system 'sleep 2'
	puts
	puts "                Returning to Main Menu               "
	puts
	system 'sleep 2'
	puts

end

def process_update_rent

	system 'sleep 0.5'
	puts
	puts "Updating Contract Rent..."
	puts
	system 'sleep 1'
	puts "Contract has been updated."
	puts
	system 'sleep 2'
	puts "Returning to Main Menu"
	puts
	system 'sleep 2'

end

def process_update_duration

	system 'sleep 0.5'
	puts
	puts "Updating Contract Length..."
	puts
	system 'sleep 1'
	puts "Contract has been updated."
	puts
	system 'sleep 2'
	puts "Returning to Main Menu"
	puts
	system 'sleep 2'

end

def process_evict

	system 'sleep 0.5'
	puts
	puts "Evicting..."
	puts
	system 'sleep 1'
	puts "The Tenant has evicted lol get rekt"
	puts
	system 'sleep 2'
	puts "Returning to Main Menu"
	puts
	system 'sleep 2'

end

def process_sign_contract

	system 'sleep 0.5'
	puts
	puts "Signing Contract..."
	puts
	system 'sleep 1'
	puts "Contract has been signed. get money get paid gansta griz-ill"
	puts
	system 'sleep 2'
	puts "Returning to Main Menu"
	puts
	system 'sleep 2'

end

def banner_title_screen

#   puts "|                         |                         |"
	puts
	puts "----------------------------------------------------"
	puts "|                                                  |"
	puts "|                    PROMAN X9                     |"
	puts "|                 Buy. Sell. Evict.                |"
	puts "|                                                  |"
	puts "|                     2019 (c)                     |"
	puts "----------------------------------------------------"
	puts

end


def banner_main_menu

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                     MAIN MENU                     |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def banner_my_assets

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                     MY ASSETS                     |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def banner_my_contracts

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                   MY CONTRACTS                    |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def banner_my_tenants

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                    MY TENANTS                     |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def banner_my_listings

#   puts "|                         |                         |"
  	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                   MY LISTINGS                     |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end


def banner_all_listings

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|              ALL AVAILABLE LISTINGS               |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def banner_all_tenants

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|               ALL AVAILABLE TENANTS               |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def banner_listing_information

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                LISTING INFORMATION                |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"

end

def banner_tenant_information

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                 TENANT INFORMATION                |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"

end

def login_banner

	system 'clear'

#   puts "|                         |                         |"
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|          AuthLog v2.8888888888 RC-1.69420         |"
	puts "|                                                   |"
	puts "|                      2019 (c)                     |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def login_create

	login_banner

	system "sleep #{$v_short1}"

#   puts "|                         |                         |"
	puts "               Connecting to Auth Server             "
	puts
	system "sleep #{$v_short2}"
	puts
	puts "                 Attempting Handshake...             "
	puts
	system "sleep #{$v_short3}"
	puts
	puts "                 Handshake Established               "
	puts
	system "sleep #{$v_short4}"
	puts
	puts "                 Creating New Account...             "
	puts
	system "sleep #{$short1}"
	puts
	puts "                 ***** SUCCESS *****                 "
	puts
	system "sleep #{$short2}"
	puts
	puts "                Returning to Main Menu               "
	puts
	system "sleep 3"
end

def login_success

	login_banner

	system "sleep #{$v_short2}"

#   puts "|                         |                         |"
	puts "               Connecting to Auth Server             "
	puts
	system "sleep #{$v_short3}"
	puts
	puts "                 Attempting Handshake...             "
	puts
	system "sleep #{$v_short1}"
	puts
	puts "                 Handshake Established               "
	puts
	system "sleep #{$v_short3}"
	puts
	puts "                Validating Credentials...            "
	puts
	system "sleep #{$short2}"
	puts
	puts "                 ***** SUCCESS *****                 "
	puts
	system "sleep #{$short4}"
	puts
	puts "                  Loading Main Menu                   "
	puts
	system "sleep 3"

	loading_x_short

end

def login_error

	login_banner

	system "sleep #{$v_short2}"

#   puts "|                         |                         |"
	puts "               Connecting to Auth Server             "
	puts
	system "sleep #{$short5}"
	puts
	puts "                 Attempting Handshake...             "
	puts
	system "sleep #{$med2}"
	puts
	puts "                Reattempting Handshake...            "
	puts
	system "sleep #{$med2}"
	puts
	puts "                 Handshake Established               "
	puts
	system "sleep #{$short2}"
	puts
	puts "                Validating Credentials...            "
	puts
	puts
	puts "                  ***** ERROR *****                  "
	puts
	system "sleep #{$short5}"
	puts
	puts "  Incorrect Username or Password. Please Try Again.  "
	puts
	puts
	system "sleep 3"
end

def logout

	login_banner

	system "sleep #{$v_short2}"

#   puts "|                         |                         |"
	puts "            Disonnecting from Auth Server            "
	puts
	system "sleep #{$short1}"
	puts
	puts "                Attempting Handshake...              "
	puts
	system "sleep #{$short2}"
	puts
	puts "               Reattempting Handshake...             "
	puts
	system "sleep #{$short3}"
	puts
	puts "                Handshake Established                "
	puts
	system "sleep #{$short4}"
	puts
	puts "               Validating Credentials...             "
	puts
	puts
	puts "                  ***** ERROR *****                  "
	puts
	system "sleep #{$short5}"
	puts
	puts "  Incorrect Username or Password. Please Try Again.  "
	puts
	puts
	system "sleep 3"
end
