class Player < ActiveRecord::Base
  has_many :mockdrafts
  # has_many :teams, through: :mockdrafts
  # has_many :author_versions, through: :mockdrafts
end

class Team < ActiveRecord::Base
  has_many :mockdrafts
  # has_many :players, through: :mockdrafts
  # has_many :author_versions, through: :mockdrafts
end

class Mockdrafts < ActiveRecord::Base
  belongs_to :player
  belongs_to :team
  belongs_to :author_version
end

class AuthorVersion <ActiveRecord::Base
  has_many :mockdrafts
end