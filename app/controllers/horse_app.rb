class HorseApp < Sinatra::Base
  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockeys' do
    @jockeys = Jockey.all
    erb :"jockeys/index"
  end

  get '/jockeys/:id' do
    @jockeys = Jockey.find(params[:id])
    erb :"jockeys/show"
  end
end
