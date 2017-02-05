require 'watir-webdriver'

b = Watir::Browser.new:chrome
b.goto 'https://www.facebook.com'
b.text_field(id: 'email').set 'kushmisra2609@gmail.com'
b.text_field(id: 'pass').set 'password'
b.button(type: 'submit').when_present.click


b.text_field(placeholder: 'Search').set 'mayank kumar'
sleep 4
b.send_keys :enter
sleep 4
if b.div(label: 'Mayank Kumar').when_present 
  b.send_keys [:control, "a"]
end
s = gets 
