require 'faker'

# Create Posts
50.times do
  Post.create!(
    title: Faker::Lorem.sentence,
    body:  Faker::Lorem.paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
  )
end

#Create unique Post
unique_post = Post.find_or_create_by(
  title: "This is a unique post",
  body:  "I am a unique post"
)
#Create unique Comment
Comment.find_or_create_by(
  post: unique_post,
  body: "I am a unique comment"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
