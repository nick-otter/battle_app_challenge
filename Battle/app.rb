require 'sinatra'
require 'sinatra/base'
require 'shotgun'
require 'rack'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end
end
