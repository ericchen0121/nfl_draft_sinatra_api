require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './environments'

class Player < ActiveRecord::Base
  belongs_to :team
end

class Team < ActiveRecord::Base
  has_many :players
end

get '/make' do
  team1 = Team.create(name: 'Baltimore Ravens')
  team2 = Team.create(name: 'San Francisco 49ers')
  Player.create(name: 'Marquise Lee', team_id: team1.id)
  Player.create(name: 'Kelvin Benjamin', team_id: team2.id)
end

get '/' do 
  'Draft day NFL 2014!'
end

get '/players' do
  return_message = {}
  players = Player.all
  return_message[:players] = players

  return_message.to_json
end

get '/player/:id' do
  # placeholder
  return_message = {}
  player = Player.find(params[:id])
  return_message[:players] = [player]

  return_message.to_json
end

get '/teams' do
  return_message = {}
  teams = Team.all
  return_message[:teams] = teams

  return_message.to_json
end

get '/team/:id' do
  return_message = {}
  team = Team.find(params[:id])
  return_message[:teams] = [team]

  return_message.to_json
end

get '/team/:id/players' do
  return_message = {}
  player = Team.find(params[:id]).players
  return_message[:players] = [player]

  return_message.to_json
end