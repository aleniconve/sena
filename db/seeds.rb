# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

puts "Deleting existing data ..."
Bookmark.destroy_all
Folder.destroy_all
User.destroy_all
Video.destroy_all

puts "Creating users ..."
User.create(id: 1, email: "user@user.com", first_name: "Pedro", last_name: "Miranda", password: "password")

puts "Creating folders ..."
Folder.create(name: "basics", user_id: 1)
Folder.create(name: "sports", user_id: 1)
Folder.create(name: "activities", user_id: 1)
Folder.create(name: "family", user_id: 1)

puts "Creating bookmarks ..."
Bookmark.create(folder_id: 1, video_id: 1)

puts "Creating videos ..."
video = "v1707231578/signary/hello_xhqj78.mp4"
new = Video.new(name: "Hello", category: "basics", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", user_id: 1)
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

puts "Ready!"
