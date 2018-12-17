require 'esa'

client = Esa::Client.new(access_token: ENV['ESA_ACCESS_TOKEN'], current_team: ENV['ESA_TEAM_NAME'])

last_week_posts = client.posts(created: '>2018-12-10').body['posts']
last_week_posts.each do |post|
  post_detail = client.post(post['number'])
  p post_detail.body['full_name']
  p post_detail.body['comments_count']
  p post_detail.body['stargazers_count']
  p post_detail.body['watchers_count']
end
