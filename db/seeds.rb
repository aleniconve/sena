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

puts "Creating users ..."

User.create(id: 1, email: "user@user.com", first_name: "Pedro", last_name: "Miranda", password: "password")

puts "Creating folders ..."

Folder.create(name: "basics", user_id: 1)

# puts "Creating bookmarks ..."
# Bookmark.create(folder_id: 1, video_id: 1)
# Bookmark.create(folder_id: 1, video_id: 2)
# Bookmark.create(folder_id: 1, video_id: 3)
# Bookmark.create(folder_id: 1, video_id: 4)
# Bookmark.create(folder_id: 1, video_id: 5)
# Bookmark.create(folder_id: 1, video_id: 6)
# Bookmark.create(folder_id: 1, video_id: 7)
# Bookmark.create(folder_id: 1, video_id: 8)
# Bookmark.create(folder_id: 1, video_id: 9)
# Bookmark.create(folder_id: 1, video_id: 10)

puts "Creating videos ..."

video = "v1707431189/signary/thank_you_ltjcqx.mp4"
new = Video.new(name: "Thank you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431182/signary/hello_ftyzyb.mp4"
new = Video.new(name: "Hello", category: "greetings", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431176/signary/numbers_fd0jjq.mp4"
new = Video.new(name: "Numbers", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431169/signary/i_love_you_cka6r8.mp4"
new = Video.new(name: "I love you", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431163/signary/how_are_you_kzfmjj.mp4"
new = Video.new(name: "How are you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431156/signary/goodbye_nzyian.mp4"
new = Video.new(name: "Goodbye", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431150/signary/nice_to_meet_you_vsviil.mp4"
new = Video.new(name: "Nice to meet you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "20 %"

video = "v1707431142/signary/excuse_me_lahj3d.mp4"
new = Video.new(name: "Excuse me", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431138/signary/please_fgjm6b.mp4"
new = Video.new(name: "Please", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431129/signary/my_name_is_ojcgfp.mp4"
new = Video.new(name: "My name is", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431122/signary/where_are_you_from_saekyr.mp4"
new = Video.new(name: "Where are you from", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431118/signary/what_time_is_it_nuyief.mp4"
new = Video.new(name: "What time is it", category: "time", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707431110/signary/whats_your_name_skqamf.mp4"
new = Video.new(name: "What's your name", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707430771/signary/whats_your_number_ljwoz8.mp4"
new = Video.new(name: "What's your number", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "40 %"

video = "v1707430606/signary/good_morning_unyoql.mp4"
new = Video.new(name: "Good morning", category: "greetings", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707430598/signary/where_do_you_work_nujnzb.mp4"
new = Video.new(name: "Where do you work", category: "work", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707430513/signary/yes_no_o5cr7p.mp4"
new = Video.new(name: "Yes, no", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707430507/signary/i_dont_understand_t4izo1.mp4"
new = Video.new(name: "I don't understand", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707430469/signary/what_why_djghfz.mp4"
new = Video.new(name: "What, why", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707430016/signary/see_you_later_pkqraa.mp4"
new = Video.new(name: "See you later", category: "time", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429737/signary/happy_birthday_to_you_wsiwgh.mp4"
new = Video.new(name: "Happy birthday", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "60 %"

video = "v1707429730/signary/happy_holidays_z3buar.mp4"
new = Video.new(name: "Happy holidays", category: "greetings", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429724/signary/i_love_sports_inj7ye.mp4"
new = Video.new(name: "I love sports", category: "sports", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429717/signary/stay_positive_qyl3r8.mp4"
new = Video.new(name: "Stay positive", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429712/signary/where_who_when_unhaly.mp4"
new = Video.new(name: "Where, who, when", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429704/signary/wanna_take_a_picture_sw22n1.mp4"
new = Video.new(name: "Wanna take a picture", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429697/signary/whats_the_problem_bejrms.mp4"
new = Video.new(name: "What's the problem", category: "work", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429691/signary/you_are_cute_j7keae.mp4"
new = Video.new(name: "You are cute", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "80 %"

video = "v1707429685/signary/sign_language_m0dibi.mp4"
new = Video.new(name: "Sign language", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429678/signary/never_give_up_rz0pxp.mp4"
new = Video.new(name: "Never give up", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429672/signary/family_uv4t8g.mp4"
new = Video.new(name: "Family", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429666/signary/sushi_m9ksb3.mp4"
new = Video.new(name: "Sushi", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429562/signary/what_do_you_want_for_dinner_m2fvd6.mp4"
new = Video.new(name: "What do you want for dinner", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429216/signary/i_am_hungry_hzophw.mp4"
new = Video.new(name: "I am hungry", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429112/signary/vegetarian_pkncsy.mp4"
new = Video.new(name: "Vegetarian", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707429106/signary/this_is_fun_actqw2.mp4"
new = Video.new(name: "This is fun", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dbmagpuir/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

puts "100 %"
puts "Ready!"
