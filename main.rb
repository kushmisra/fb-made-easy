
require 'watir'
require 'highline/import'

browser = Watir::Browser.new :chrome
browser.goto 'https://www.facebook.com'

print 'enter email :- '
email = gets.chomp
password = ask("Enter password: ") { |q| q.echo = false }

browser.text_field(:id => 'email').set email
browser.text_field(:id => 'pass').set password
browser.form(:id => 'login_form').submit
sleep 10
names = []
browser.goto 'https://web.facebook.com/events/birthdays'
browser.div(:id => 'events_birthday_view').div(:class => '_4-u2 _59ha _2fv9 _4-u8').ul(:class => '_3ng0').lis.each do |li|
   names <<li.div(:class => 'clearfix _3ng1').div(:class => '_3ng2 lfloat _ohe').a.text
end	

if names.size > 0
	names.each do |name|
		puts "message send to #{name}"
	end
end

browser.goto ('https://www.facebook.com')
names.each do |name| 
# 100.times do
	browser.text_field(:placeholder => 'Search').set "#{name}"
	sleep 2
	browser.send_keys :enter
	sleep 2
	element = browser.div(:class => "_1mf _1mj").span
	message = ' na aisa bhi nahi hai...:) :P ..its because of the fests going on :)'
	message = "arguments[0].innerHTML = '#{message}'"
	script = "return #{message}"
	browser.execute_script(script, element)
	browser.send_keys [:control, "a"]
	browser.send_keys [:control, "x"]
	browser.send_keys [:control, "v"]
	sleep 1
	browser.send_keys :enter
	browser.div(:class => 'mls titlebarButtonWrapper rfloat _ohf').a(:class => "_3olu _3olv close button").click	
end
s = gets