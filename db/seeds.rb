# defines the PLAYERS, TEAMS, etc. constants
# creating this schema will make it easier to query interesting trends from the data

require_relative 'seeds_players'
require_relative 'seeds_teams'
require_relative 'seeds_mocks'
require_relative 'seeds_authors'
require_relative 'seeds_draftorder'
require_relative 'seeds_draft_picks'

PLAYERS.each do |player|
  Player.find_or_create_by(name: player[0], position: player[1])
end

TEAMS.each do |team|
  Team.find_or_create_by(name: team[0], division: team[1])
end

DRAFT_PICKS.each do |pick|
  # this assumes Array and particular order for seeding.
  # prob best practice to put it in an Array of Hashes to mitigate any errors
  DraftPick.find_or_create_by(team_id: Team.where("name like ?", "#{pick[0]}%"), overall_pick: pick[1], round: pick[2], round_pick: pick[3], point_value: pick[4], compensatory: pick[5], trade: pick[6])
end

# ALL_AUTHOR_VERSIONS.each do |av|
#   AuthorVersion.find_or_create_by(
#     author: av[:author], 
#     version: av[:version],
#     date_published: Date.parse(av[:date_published]),
#     url: av[:url], 
#     company: av[:company]
#   )
# end

# ALL_MOCKS.each do |mock|
#   mock.each_with_index do |pick, index|
#     Mockdrafts.find_or_create_by(
#       author_version_id: '1',
#       player_id: Player.find_by_name(pick[0]).id, 
#       team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
#       overall_pick: index + 1,
#       commentary: pick[1]
#     )
#   end
# end

# This code didn't work!
# number_of_drafts = [*1..12] # constructs array of range

# number_of_drafts.each do |num|
#   (p.send "AUTHOR_VERSION_#{num}")[:author]

# Working version!!

AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_1[:author], 
  version: AUTHOR_VERSION_1[:version],
  date_published: Date.parse(AUTHOR_VERSION_1[:date_published]),
  url: AUTHOR_VERSION_1[:url], 
  company: AUTHOR_VERSION_1[:company]
)

MOCK_1.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end

AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_2[:author], 
  version: AUTHOR_VERSION_2[:version],
  date_published: Date.parse(AUTHOR_VERSION_2[:date_published]),
  url: AUTHOR_VERSION_2[:url], 
  company: AUTHOR_VERSION_2[:company]
)

MOCK_2.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end


AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_3[:author], 
  version: AUTHOR_VERSION_3[:version],
  date_published: Date.parse(AUTHOR_VERSION_3[:date_published]),
  url: AUTHOR_VERSION_3[:url], 
  company: AUTHOR_VERSION_3[:company]
)

MOCK_3.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end
AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_4[:author], 
  version: AUTHOR_VERSION_4[:version],
  date_published: Date.parse(AUTHOR_VERSION_4[:date_published]),
  url: AUTHOR_VERSION_4[:url], 
  company: AUTHOR_VERSION_4[:company]
)

MOCK_4.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end
AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_5[:author], 
  version: AUTHOR_VERSION_5[:version],
  date_published: Date.parse(AUTHOR_VERSION_5[:date_published]),
  url: AUTHOR_VERSION_5[:url], 
  company: AUTHOR_VERSION_5[:company]
)

MOCK_5.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end
AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_6[:author], 
  version: AUTHOR_VERSION_6[:version],
  date_published: Date.parse(AUTHOR_VERSION_6[:date_published]),
  url: AUTHOR_VERSION_6[:url], 
  company: AUTHOR_VERSION_6[:company]
)

MOCK_6.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end
AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_7[:author], 
  version: AUTHOR_VERSION_7[:version],
  date_published: Date.parse(AUTHOR_VERSION_7[:date_published]),
  url: AUTHOR_VERSION_7[:url], 
  company: AUTHOR_VERSION_7[:company]
)

MOCK_7.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end
AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_8[:author], 
  version: AUTHOR_VERSION_8[:version],
  date_published: Date.parse(AUTHOR_VERSION_8[:date_published]),
  url: AUTHOR_VERSION_8[:url], 
  company: AUTHOR_VERSION_8[:company]
)

MOCK_8.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end
AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_9[:author], 
  version: AUTHOR_VERSION_9[:version],
  date_published: Date.parse(AUTHOR_VERSION_9[:date_published]),
  url: AUTHOR_VERSION_9[:url], 
  company: AUTHOR_VERSION_9[:company]
)

MOCK_9.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end
AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_10[:author], 
  version: AUTHOR_VERSION_10[:version],
  date_published: Date.parse(AUTHOR_VERSION_10[:date_published]),
  url: AUTHOR_VERSION_10[:url], 
  company: AUTHOR_VERSION_10[:company]
)

MOCK_10.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end

AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_11[:author], 
  version: AUTHOR_VERSION_11[:version],
  date_published: Date.parse(AUTHOR_VERSION_11[:date_published]),
  url: AUTHOR_VERSION_11[:url], 
  company: AUTHOR_VERSION_11[:company]
)

MOCK_11.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end

AuthorVersion.find_or_create_by(
  author: AUTHOR_VERSION_12[:author], 
  version: AUTHOR_VERSION_12[:version],
  date_published: Date.parse(AUTHOR_VERSION_12[:date_published]),
  url: AUTHOR_VERSION_12[:url], 
  company: AUTHOR_VERSION_12[:company]
)

MOCK_12.each_with_index do |pick, index|
  Mockdrafts.find_or_create_by(
    author_version_id: '1',
    player_id: Player.find_by_name(pick[0]).id, 
    team_id: Team.where("name like ?", "%#{DRAFT_ORDER[index]}%").first.id,
    overall_pick: index + 1,
    commentary: pick[1]
  )
end

