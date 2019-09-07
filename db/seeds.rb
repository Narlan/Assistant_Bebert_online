system "clear"
system "cls"

users = ["Maryyyyyy", "Bobybob", "Cricri", "Bebert"]

cpt = 1
users.each do |user|
  user = User.create(email: "member00#{cpt}@gmail.com", password: "123456", nickname: user, tdc: 1, need: 48)
  cpt += 1
end

Alliance.create(name: "Les 1001 Pattes")
