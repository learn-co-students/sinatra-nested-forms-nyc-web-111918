require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @p1 = Pirate.new(params["p_name"], params["pw"], params["ph"])
      @s1 = Ship.new(params["s1_name"], params["st1"], params["sb1"])
      @s2 = Ship.new(params["s2_name"], params["st2"], params["sb2"])
      erb :"pirates/show"
    end

    get '/new' do
      erb :new
    end

  end
end
