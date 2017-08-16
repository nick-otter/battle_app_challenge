require 'sinatra'
require 'sinatra/base'
require 'shotgun'
require 'rack'

class App < Sinatra::Base
  get '/' do
    "Hello Battle!"
  end
end
