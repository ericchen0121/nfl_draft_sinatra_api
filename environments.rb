# configure postgresql databases in development and production
configure :development do
  # set to local SavvyMac postgreSQL db
  set :database, 'postgresql://SavvyMac@localhost/nfl_draft'
end

configure :production do
  # postgresQL on Heroku defaults to postgres:///localhost/mydb
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end