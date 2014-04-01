ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require_relative 'api.rb'

include Rack::Tests::Methods

def app
  Sinatra::Application
end