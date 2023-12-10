# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

5.times do |i|
  user = User.create(name: Faker::Name.name)
  post = Post.create(user_id: user.id, title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph(sentence_count: 2))

  (1..6).to_a.sample.times do |i|
    Comment.create(post_id: post.id, user_id: user.id, message: Faker::Lorem.paragraph(sentence_count: 2))
  end
end