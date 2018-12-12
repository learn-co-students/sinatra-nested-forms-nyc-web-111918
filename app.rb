require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do
      "Welcome to the Nested Forms Lab! \nlet's navigate to the '/new'"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post '/pirates' do
      #make objects here
      #Pirate.new(params[:pirate])
      #@pirate = Pirate.all
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships].map do |ship|
        Ship.new(ship)
      end


      erb :"pirates/show"
    end

  end
end
