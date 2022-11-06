require 'sinatra'

# Model
posts = [{title: "First Post", body: "content of first post"}]

# Index route
get '/posts' do
  return posts.to_json
end

# Show route
get '/posts/:id' do
  # return a particular post as JSON based on the id param
  # params always come to a string so we need to convert to an integer
  id = params["id"].to_i
  return posts[id].to_json
end
