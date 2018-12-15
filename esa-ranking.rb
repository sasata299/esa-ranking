require 'esa'

client = Esa::Client.new(access_token: ENV['ESA_ACCESS_TOKEN'], current_team: ENV['ESA_TEAM_NAME'])
p client
