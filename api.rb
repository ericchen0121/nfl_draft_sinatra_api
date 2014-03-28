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
  Player.all.to_json
end

get '/player/:id' do
  # placeholder
  Player.find(:first, params[:id]).to_json
end

get '/teams' do
  Team.all.to_json
end

get '/team/:id' do
  Team.find(:first, params[:id]).to_json
end

get '/team/:id/players' do
  Team.find(params[:id]).players.to_json
end