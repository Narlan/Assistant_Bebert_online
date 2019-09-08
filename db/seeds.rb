require_relative "seed_user_data"

require 'nokogiri'
require 'mechanize'

system "clear"
system "cls"

agent = Mechanize.new
page = agent.get('http://s1.fourmizzz.fr/alliance.php?Membres')
login_form = page.forms[1]
username_field = login_form.field_with(:name => "pseudo")
username_field.value = "Maryyyyyy"
password_field = login_form.field_with(:name => "mot_passe")
password_field.value = "Terminal"
page = agent.submit login_form

pp page


cpt = 1
users.each do |user|
  user = User.create(email: "member#{cpt}@gmail.com", password: "123456", nickname: user[:nickname], tdc: user[:tdc], need: 48)
  cpt += 1
end

Alliance.create(name: "Les 1001 Pattes")
