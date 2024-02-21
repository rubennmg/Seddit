# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Create 10 random users
10.times do
  User.create(
    email: Faker::Internet.email,
    encrypted_password: Faker::Internet.password
  )
end

# Create 5 random communities
5.times do
  Community.create(
    name: Faker::Lorem.words(number: 2).join(' '),
    description: Faker::Lorem.sentence,
    user_id: User.pluck(:id).sample
  )
end

# Create 20 random posts
20.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    text: Faker::Lorem.paragraph,
    community_id: Community.pluck(:id).sample,
    user_id: User.pluck(:id).sample
  )
end
