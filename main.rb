require 'watir-webdriver'

b = Watir::Browser.new:chrome
b.goto 'https://www.facebook.com'
b.text_field(id: 'email').set 'kushmisra2609@gmail.com'
b.text_field(id: 'pass').set 'your password'
b.button(type: 'submit').when_present.click


b.text_field(placeholder: 'Search').set 'mayank kumar'
sleep 2
b.send_keys :enter

s = gets 
