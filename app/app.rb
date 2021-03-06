require 'sinatra/base'
require_relative 'array.rb'

class Monday < Sinatra::Base

  set :port, 4000
  enable :sessions

  get '/' do
    'Happy Tech Test Week!'
  end


  get '/set' do
    session[:params]
    params.each {|key, value| session[:"#{key}"] = value}
    erb :setter
  end


  get '/get' do
    p session[:params]
    p @key = params[:key]
    p @value = session[:"#{@key}"]
    p "#{params[:key]}"
  end

  # get '/set' do
  #   # /set?somekey=somevalue
  #   @session_array = Array.new
  #   @key = params[:somekey]
  #   @value = params[:somevalue]
  #   @session_array << {@key => @value}
  #   # @session_array.add_key_value_pair_to_hash(@key, @somevalue)
  #   # send key value pair to an array to be stored
  #   'Your hash is being stored' + "#{@session_array}"
  #
  # end
  #
  # get '/get' do
  #   # /get?key=somekey
  #   @key = params[:somekey]
  #   @value = @session_array.array.select {|k, v| k = "#{@key}" }
  #     # go to array and find the value associated with this key
  #
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
