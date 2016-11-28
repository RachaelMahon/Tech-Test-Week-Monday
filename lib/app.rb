require 'sinatra/base'



class Monday < Sinatra::Base

  set :port, 4000

  get '/' do
    'Hello Monday!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
