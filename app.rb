require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        @session = session #stores session hash in instace variable to access in views
        @session[:item] = params[:item]#adds item to session hash
        # "Item #{params[:item]}"
        # Binding.pry
        # params.to_s
    end


end