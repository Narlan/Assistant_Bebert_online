require_relative "seed_user_data"
require_relative "seed_ui"
require "colorize"

system "clear"
system "cls"

puts introduction()

puts "Creating users".colorize(:color => :white, :background => :red)
cpt = 1
users.each do |user|
  user = User.create(email: "member#{cpt}@gmail.com", password: "123456", nickname: user[:nickname], tdc: user[:tdc], need: 48)
  cpt += 1
  puts " - #{user.nickname.green}"
end

puts "\n\n"

Alliance.create(name: "Les 1001 Pattes")
