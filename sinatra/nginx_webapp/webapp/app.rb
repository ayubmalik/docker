require "rubygems"
require "sinatra"
require "json"

class App < Sinatra::Application

  set :bind, '0.0.0.0'

  get '/' do
    "<h2>DockerBook Test Sinatra app!</h1>"
  end

  post '/json/?' do
    params.to_json
  end

  run! if app_file = $0
end
