require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      # binding.pry
      #Get the pirate instance from the DB
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])


      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      #
      # @ships = Ship.all
      #  binding.pry

      erb :'pirates/show'
    end

  end
end
