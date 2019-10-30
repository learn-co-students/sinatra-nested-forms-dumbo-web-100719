require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      #so here i'm passing a hash
      #  {"pirate"=>{"name"=>"Diego", "weight"=>"", "height"=>"", "ships"=>[{"name"=>""}, {"name"=>""}]}, "Submit"=>"Submit"}
      # in params[:pirate] passes everything above
      # so we are creating an instance of Pirate with the info passed above
      @pirate = Pirate.new(params[:pirate])
      # bineding.pry
      # here we are iterating through Key: ships and getting each key:name
      # to create a new instance of Ship
      params[:pirate][:ships].each do |ship|
      #  params[:ship].each do |ship,details|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
