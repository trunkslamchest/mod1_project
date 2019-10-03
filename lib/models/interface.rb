require_relative "../sleep_screens"

class Interface
	attr_reader :prompt
	attr_accessor :user

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome

	loading_title_screen

	system "clear"

	banner_title_screen

	@prompt.select("Please login:") do |menu|
		menu.choice "Login to an Existing Account", -> { User.login }
		menu.choice "Create New Account", -> { User.new_account }
		menu.choice "Exit", -> { User.app_exit }
	end

  end

end
