require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    o_string = params[:string]
    @r_string = o_string.reverse

    erb :reversed
  end

  get '/friends' do
  @friends = ['Emily Wilding Davison', 'Harrier Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth' ]

  erb :friends

  end
end
