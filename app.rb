require_relative 'config/environment'

class App < Sinatra::Base
	# Enable sessions and set a session_secret
	configure do
		enable :sessions
		set :session_secret, 'secret'
	end

	# Set up a controller action that responds to a GET
	get '/' do
		erb :index
	end

	post '/checkout' do
		#sets the params in teh session hash
		session[:item] = params[:item]
		@session = session

		#Displays the shopping cart contents
		erb :checkout
		# added a checkout.erb
	end
end
