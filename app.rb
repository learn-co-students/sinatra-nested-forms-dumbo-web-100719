require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |deets|
        Ship.new(deets)
      end
      # @ship = Ship.new(params[:name], params[:type], params[:booty])
      # @ship = Ship.new(params[:ship])
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
