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

Folder.create(id: 1, name: "Favorites", user_id: 1)

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

video = "v1707731779/thank_you_oibuip.mp4"
new = Video.new(name: "Thank you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707736754/This_is_my_friend_ofnifu.mp4"
new = Video.new(name: "This is my friend", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731773/hello_m70iof.mp4"
new = Video.new(name: "Hello", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731777/numbers_xn8qkv.mp4"
new = Video.new(name: "Numbers", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731776/i_love_you_luasja.mp4"
new = Video.new(name: "I love you", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731773/how_are_you_ydoli1.mp4"
new = Video.new(name: "How are you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707736712/Alphabet_A-H_c4exv9.mp4"
new = Video.new(name: "Alphabet A-H", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707736720/Brother_and_Sister_gtll3s.mp4"
new = Video.new(name: "Brother and Sister", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731772/goodbye_tanw2x.mp4"
new = Video.new(name: "Goodbye", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731778/nice_to_meet_you_oqf52d.mp4"
new = Video.new(name: "Nice to meet you", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "20 %"

video = "v1707731772/excuse_me_sgqckz.mp4"
new = Video.new(name: "Excuse me", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707736752/Photographer_smrxva.mp4"
new = Video.new(name: "Photographer", category: "profession", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731777/please_yzbxg5.mp4"
new = Video.new(name: "Please", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731780/my_name_is_xwgli8.mp4"
new = Video.new(name: "My name is", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731782/where_are_you_from_cwml82.mp4"
new = Video.new(name: "Where are you from", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731782/what_time_is_it_qcgzvl.mp4"
new = Video.new(name: "What time is it", category: "time", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731784/whats_your_name_albthg.mp4"
new = Video.new(name: "What's your name", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731782/whats_your_number_qdbdjh.mp4"
new = Video.new(name: "What's your number", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!


video = "v1707736712/Alphabet_H-O_dxdrin.mp4"
new = Video.new(name: "Alphabet H-O", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

puts "40 %"

video = "v1707731772/good_morning_k1i8ex.mp4"
new = Video.new(name: "Good morning", category: "greetings", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731782/where_do_you_work_jn6o4f.mp4"
new = Video.new(name: "Where do you work", category: "work", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707736747/I_need_coffee_ssmxag.mp4"
new = Video.new(name: "I need coffee", category: "work", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731786/yes_no_ox32eq.mp4"
new = Video.new(name: "Yes, no", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731773/i_dont_understand_qv4rog.mp4"
new = Video.new(name: "I don't understand", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731781/what_why_no3eye.mp4"
new = Video.new(name: "What, why", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731778/see_you_later_rc4er9.mp4"
new = Video.new(name: "See you later", category: "time", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707736723/Good_Morning_las3fb.mp4"
new = Video.new(name: "Good Morning and Good Night", category: "time", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731772/happy_birthday_to_you_iylslt.mp4"
new = Video.new(name: "Happy birthday", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!
puts "60 %"

video = "v1707736721/Good_Afternoon_vu2pse.mp4"
new = Video.new(name: "Good afternoon", category: "greetings", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731774/happy_holidays_rjebsb.mp4"
new = Video.new(name: "Happy holidays", category: "greetings", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731775/i_love_sports_oenrgr.mp4"
new = Video.new(name: "I love sports", category: "sports", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731779/stay_positive_udzqli.mp4"
new = Video.new(name: "Stay positive", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731783/where_who_when_jfxpmd.mp4"
new = Video.new(name: "Where, who, when", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731780/wanna_take_a_picture_d2qkah.mp4"
new = Video.new(name: "Wanna take a picture", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731781/whats_the_problem_sva5lu.mp4"
new = Video.new(name: "What's the problem", category: "work", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731784/you_are_cute_okrkls.mp4"
new = Video.new(name: "You are cute", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707736714/Alphabet_O-Z_gt6owm.mp4"
new = Video.new(name: "Alphabet O-Z", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

puts "80 %"

video = "v1707731778/sign_language_gfx30q.mp4"
new = Video.new(name: "Sign language", category: "basics", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731777/never_give_up_chjsyx.mp4"
new = Video.new(name: "Never give up", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731772/family_oayn73.mp4"
new = Video.new(name: "Family", category: "family", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731779/sushi_wmi25k.mp4"
new = Video.new(name: "Sushi", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731780/what_do_you_want_for_dinner_eg5kjp.mp4"
new = Video.new(name: "What do you want for dinner", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731773/i_am_hungry_bx8vin.mp4"
new = Video.new(name: "I am hungry", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731780/vegetarian_ohpqcn.mp4"
new = Video.new(name: "Vegetarian", category: "food", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

video = "v1707731780/this_is_fun_c072pr.mp4"
new = Video.new(name: "This is fun", category: "phrases", user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
file = URI.open("https://res.cloudinary.com/dq1ieegre/video/upload/#{video}")
new.video.attach(io: file, filename: video, content_type: "video/mp4")
new.save!

puts "100 %"
puts "Ready!"
