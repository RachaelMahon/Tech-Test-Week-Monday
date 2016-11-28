require 'sinatra/base'
require 'array.rb'



class Monday < Sinatra::Base

  set :port, 4000
  enable :sessions

  get '/' do
    'Happy Tech Test Week!'
  end

  get '/set?somekey=somevalue' do
    @session_array = Array_Model.new
    @key = params[:somekey]
    @somevalue = params[:somevalue]
    @session_array.add_key_value_pair_to_hash(@key, @somevalue)
    # send key value pair to an array to be stored
    'Your hash is being stored.'
  end

  get '/get' do
    @key = params[:somekey]
    # go to array and find the value associated with this key

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
