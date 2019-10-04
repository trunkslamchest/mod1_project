require_relative "sleep_timers"

def load_main_menu

	puts "                  Loading Main Menu                  "
	puts
	system "sleep 3"
	print "\r" + ("\e[A\e[K"*500)
	system "sleep 0.5"

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
	puts "|                    MY LISTINGS                    |"
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

def banner_contract_information

#   puts "|                         |                         |"
  	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                CONTRACT INFORMATION               |"
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
	puts

end

def banner_tenant_information

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                 TENANT INFORMATION                |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def login_banner

	system 'clear'

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|                 AuthLog rc-1.69420                |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def contract_banner

	system 'clear'

#   puts "|                         |                         |"
	puts
	puts "-----------------------------------------------------"
	puts "|                                                   |"
	puts "|        Contractinator Premium v2.8888888888       |"
	puts "|                                                   |"
	puts "-----------------------------------------------------"
	puts

end

def loading_title_screen

	system 'clear'

	system "sleep 0.5"

	banner_title_screen

	puts
#   puts "|                       |                           |"
	puts "                    Now Loading                      "
	puts

	system "sleep #{$v_short2}"
	puts
	puts "                         0%                          "
	system "sleep #{$v_short5}"
	print "\r" + ("\e[A\e[K"*1)
	puts "                        25%                          "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "                        50%                          "
	system "sleep #{$short2}"
	print "\r" + ("\e[A\e[K"*1)
	puts "                        75%                          "
	system "sleep #{$v_short1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "                        98%                          "
	system "sleep #{$long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "                        99%                          "
	system "sleep #{$v_long1}"
	print "\r" + ("\e[A\e[K"*1)
	puts "                       100%                          "
	system "sleep #{$v_long2}"
	puts
	puts "                  Loading Complete                   "
	puts

	system "sleep 5"

	system 'clear'

	system "sleep #{$v_short1}"

end


def login_create

	system "sleep 0.5"

	login_banner

	system "sleep #{$v_short1}"

#   puts "|                         |                         |"
	puts "              Connecting to Auth Server              "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$x_short4}"
	puts "                 Attempting Handshake                "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 Handshake Established               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$x_short3}"
	puts "                 Creating New Account                "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 ***** SUCCESS *****                 "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$v_short2}"

	load_main_menu

end

def login_success

	system "sleep 0.5"

	login_banner

	system "sleep #{$v_short2}"

#   puts "|                         |                         |"
	puts "              Connecting to Auth Server              "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$x_short2}"
	puts "                 Attempting Handshake               "
	puts
	system "sleep #{$short4}"
	puts
	puts "                Handshake Established               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$v_short3}"
	puts "                Validating Credentials               "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 ***** SUCCESS *****                 "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$v_short2}"

	load_main_menu

end

def login_error

	system "sleep 0.5"

	login_banner

	system "sleep #{$v_short2}"

#   puts "|                         |                         |"
	puts "              Connecting to Auth Server              "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "                Attempting Handshake                 "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$med2}"
	puts "               Reattempting Handshake                "
	puts
	system "sleep #{$short4}"
	puts
	puts "               Handshake Established                 "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$short2}"
	puts "               Validating Credentials                "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 ***** ERROR *****                   "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$short5}"
	puts "  Incorrect Username or Password. Please Try Again.  "
	puts
	puts
	system "sleep 3"
	print "\r" + ("\e[A\e[K"*500)
	system "sleep 0.5"

end

def logout

	system "sleep 0.5"

	login_banner

	system "sleep #{$v_short2}"

#   puts "|                         |                         |"
	puts "            Disonnecting from Auth Server            "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$v_short3}"
	puts "              Backing out of Handshake               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$v_short5}"
	puts "                 Revoking Validation                 "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$x_short1}"

	puts "You have been successfully logged out of you Account "

	system "sleep 3"

	print "\r" + ("\e[A\e[K"*1)

	system "sleep 0.5"

	load_main_menu

end

def terminate_app

	system "sleep 0.5"

	banner_title_screen

	system "sleep #{$v_short2}"

#   puts "|                         |                         |"
	puts "              Deleting Temporary Files               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "              Clearing Database Cache                "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$med2}"
	puts "              Terminating Sub Routines               "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 **** SUCCESS ****                   "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$short2}"
	puts "                 Reverting Changes                   "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short2}"
	puts "               Finalized Termination                 "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "           Thank you for using Proman X9             "
	puts
	system "sleep 2"
	puts
	puts "      Created by Austin Smith & Oneil Williams       "
	puts
	system "sleep 3"
	print "\r" + ("\e[A\e[K"*500)
	system "sleep 0.5"

end

def process_update_rent

	system "sleep 0.5"

	contract_banner

	system "sleep #{$v_short2}"

	puts "              Negotiating with Handler               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "              Engaging Barter Protocols              "
	puts
	system "sleep #{$short4}"
	puts
	puts "                   Barter Engaged                    "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$med2}"
	puts "            Sending Contractual Obligations          "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 **** SUCCESS ****                   "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$short2}"
#   puts "|                         |                         |"
	puts "   Contract Rent Modification Yeeted and Completed    "

	system "sleep 3"

	print "\r" + ("\e[A\e[K"*1)

	system "sleep 0.5"

	load_main_menu

end

def process_update_duration

	system "sleep 0.5"

	contract_banner

	system "sleep #{$v_short2}"

	puts "              Negotiating with Handler               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "              Engaging Barter Protocols              "
	puts
	system "sleep #{$short4}"
	puts
	puts "                   Barter Engaged                    "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$med2}"
	puts "            Sending Contractual Obligations          "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 **** SUCCESS ****                   "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$short2}"
#   puts "|                         |                         |"
	puts " Contract Duration Modification Yeeted and Completed  "

	system "sleep 3"

	print "\r" + ("\e[A\e[K"*1)

	system "sleep 0.5"

	load_main_menu

end

def process_evict

	system "sleep 0.5"

	contract_banner

	system "sleep #{$v_short2}"

	puts "              Negotiating with Handler               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "              Engaging Burn Procedures               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$med2}"
	puts "              Contractual Fires Engaged              "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$med2}"
	puts "       Sending Tenant to the Gates of Oblivion       "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 **** SUCCESS ****                   "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$short2}"
#   puts "|                         |                         |"
	puts "        Contract has been Yeeted and Deleted         "

	system "sleep 3"

	print "\r" + ("\e[A\e[K"*1)

	system "sleep 0.5"

	load_main_menu

end

def process_sign_contract

	system "sleep 0.5"

	contract_banner

	system "sleep #{$v_short2}"

	puts "              Negotiating with Handler               "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "              Automating Task Scheduler              "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$med2}"
	puts "         Writing Contract into Bi-lateral Law        "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*1)
	system "sleep #{$short5}"
	puts "           Allowing the All the Inks to Dry           "
	puts
	system "sleep #{$short4}"
	puts
	puts "                 **** SUCCESS ****                   "
	system "sleep #{$short1}"
	print "\r" + ("\e[A\e[K"*4)
	system "sleep #{$short2}"
#   puts "|                         |                         |"
	puts "   Contract Creation has been Yeeted and Completed   "

	system "sleep 3"

	print "\r" + ("\e[A\e[K"*1)

	system "sleep 0.5"

	load_main_menu
end