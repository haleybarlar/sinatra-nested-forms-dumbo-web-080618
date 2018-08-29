require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
get '/' do
  erb :root
end

get '/new' do
  erb :"pirates/new"
end

post '/pirates' do
  @pirate1 = Pirate.new(params[:pirate])
  params[:pirate][:ships].map do |all|
    Ship.new(all)
  end
  @ship1 = Ship.all
  erb :'pirates/show'
end

end
end
