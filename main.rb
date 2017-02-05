require 'watir-webdriver'

b = Watir::Browser.new:chrome
b.goto 'https://www.facebook.com'
b.text_field(id: 'email').set 'luvmisra97@gmail.com'
b.text_field(id: 'pass').set 'babita1008'
b.button(type: 'submit').when_present.click


b.text_field(placeholder: 'Search').set 'mayank kumar'
sleep 2
b.send_keys :enter

s = gets 
