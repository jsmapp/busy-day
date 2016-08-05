require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/results' do
    @results = get_data_from_api
    erb :results
  end

  get '/blog' do
    erb :blog
  end

  get '/about' do
    erb :about
  end

  get '/contact' do
    erb :contact
  end

  post '/yelp' do
    @results = talk_to_yelp(params[:location], params[:type], params[:limit])
    erb :results
  end
#   get '/about' do
#     erb :about
#   end

#   post '/calculate' do
#     #getting info out of params hash
#     first=params[:num1].to_f
#     second=params[:num2].to_f
#     user_birth=params[:birthday]
#     #calculating using info from params
#     @sum=add(first,second)
#     @days_alive=years_alive(user_birth)
#     #directing to our results page
#     erb :results
#   end

end