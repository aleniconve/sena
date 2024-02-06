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
Video.destroy_all
Folder.destroy_all
User.destroy_all
Bookmark.destroy_all

puts "Creating users ..."
User.create(id: 1, email: "user@user.com", first_name: "Pedro", last_name: "Miranda", password: "password")

puts "Creating folders ..."
Folder.create(name: "basics", user_id: 1)
Folder.create(name: "sports", user_id: 1)
Folder.create(name: "activities", user_id: 1)
Folder.create(name: "family", user_id: 1)

puts "Creating bookmarks ..."
Bookmark.create(folder_id: 1, video_id: 1)
Bookmark.create(folder_id: 1, video_id: 2)
Bookmark.create(folder_id: 1, video_id: 3)
Bookmark.create(folder_id: 1, video_id: 4)
Bookmark.create(folder_id: 1, video_id: 5)
Bookmark.create(folder_id: 1, video_id: 6)
Bookmark.create(folder_id: 1, video_id: 7)
Bookmark.create(folder_id: 1, video_id: 8)
Bookmark.create(folder_id: 1, video_id: 9)
Bookmark.create(folder_id: 1, video_id: 10)

puts "Creating videos ..."
video = "v1707231578/signary/hello_xhqj78.mp4"
new = Video.new(id: 1, name: "Hello", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "10 %"

video = "v1707237419/signary/thank_you_mugasy.mp4"
new = Video.new(id: 2, name: "Thank you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "20 %"

video = "v1707237440/signary/counting_kr3qn8.mp4"
new = Video.new(id: 3, name: "Counting", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "30 %"
video = "v1707237379/signary/i_love_you_c8dzwv.mp4"
new = Video.new(id: 4, name: "I love you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "40 %"

video = "v1707237435/signary/how_are_you_elmehh.mp4"
new = Video.new(id: 5, name: "How are you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "50 %"

video = "v1707237419/signary/goodbye_jixygm.mp4"
new = Video.new(id: 6, name: "Goodbye", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "60 %"

video = "v1707237432/signary/nice_to_meet_you_hvjdlm.mp4"
new = Video.new(id: 7, name: "Nice to meet you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "70 %"

video = "v1707237732/signary/please_gkpwyg.mp4"
new = Video.new(id: 8, name: "Please", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "80 %"

video = "v1707237973/signary/whats_your_name_yzvcgb.mp4"
new = Video.new(id: 9, name: "What's your name", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "90 %"

video = "v1707237967/signary/see_you_later_prv0zj.mp4"
new = Video.new(id: 10, name: "See you later", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

puts "100 %"
puts "Ready!"
