# version 0.2

require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './app/models/models' # created a models folder
require './environments'


get '/make' do
  # team1 = Team.create(name: 'Baltimore Ravens')
  # team2 = Team.create(name: 'San Francisco 49ers')
  # Player.create(name: 'Marquise Lee', team_id: team1.id)
  # Player.create(name: 'Kelvin Benjamin', team_id: team2.id)
end

get '/' do 
  'Draft day NFL 2014!'
end

get '/players' do
  content_type :json

  return_message = {}
  players = Player.all
  return_message[:players] = players

  return_message.to_json
end

get '/player/:id' do
  content_type :json

  return_message = {}
  player = Player.find(params[:id])
  return_message[:players] = [player]

  return_message.to_json
end

get '/teams' do
  content_type :json

  return_message = {}
  teams = Team.all
  return_message[:teams] = teams

  return_message.to_json
end

get '/team/:id' do
  content_type :json

  return_message = {}
  team = Team.find(params[:id])
  return_message[:teams] = [team]

  return_message.to_json
end

get '/round/:id/teams' do
  content_type :json

  return_message = {}
  player = Team.find(params[:id]).players
  return_message[:players] = [player]

  return_message.to_json
end