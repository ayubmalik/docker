require "rubygems"
require "sinatra"
require "json"
require "uri"
require "redis"

class App < Sinatra::Application

  set :bind, '0.0.0.0'

  uri=URI.parse(ENV['DB_PORT'])
  redis = Redis.new(:host => uri.host, :port => uri.port)
  
  get '/' do
    "<h1>DockerBook Test Sinatra app</h1>"
  end

  get '/json' do
    content_type "application/json"
    params = redis.get "params"
    params.to_json
  end

  post '/json' do
    redis.set "params", params.to_json
    params.to_json
  end

end
