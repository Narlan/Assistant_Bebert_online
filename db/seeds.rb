require_relative "seed_user_data"

system "clear"
system "cls"

cpt = 1
users.each do |user|
  user = User.create(email: "member#{cpt}@gmail.com", password: "123456", nickname: user[:nickname], tdc: user[:tdc], need: 48)
  cpt += 1
end

Alliance.create(name: "Les 1001 Pattes")
