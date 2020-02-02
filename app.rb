require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/' do
    @results = PigLatinizer.new(params[:user_input])
    erb :new_data
  end
  
end