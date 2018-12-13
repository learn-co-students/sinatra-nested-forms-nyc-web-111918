require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    get '/pirates' do
      erb :'/pirates/show'
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_details|
        Ship.new(ship_details)
      end
      @ships = Ship.all
      erb :'/pirates/show'
    end
    # code other routes/actions here

  end
end
