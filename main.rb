
require 'watir'

browser = Watir::Browser.new :chrome
browser.goto 'https://www.facebook.com'
browser.text_field(:id => 'email').set 'mk9990143266@gmail.com'
browser.text_field(:id => 'pass').set 'Jai@hind1'
browser.form(:id => 'login_form').submit
browser.goto 'https://www.facebook.com/notifications'
sleep 5
names = []
browser.divs(:class => '_4l_v').each do |div|
	temp_text = div.span.text
	if temp_text.include? "was"
		next
	end
	if temp_text.include? "birthday"
		temp_text = temp_text.split(' ')
		temp_text = "#{temp_text[0]} #{temp_text[1]}"
		names << temp_text 
	end
end

if names.size > 0
	names.each do |name|
		puts "message send to #{name}"
	end
end

browser.goto ('https://www.facebook.com')
names.each do |name| 
	browser.text_field(:placeholder => 'Search').set "#{name}"
	sleep 2
	browser.send_keys :enter
	sleep 2
	element = browser.div(:class => "_1mf _1mj").span
	script = "return arguments[0].innerHTML = 'testing beta'"
	browser.execute_script(script, element)
	browser.send_keys [:control, "a"]
	browser.send_keys [:control, "x"]
	browser.send_keys [:control, "v"]
	sleep 1
	browser.send_keys :enter
	browser.div(:class => 'mls titlebarButtonWrapper rfloat _ohf').a(:class => "_3olu _3olv close button").click	
end
s = gets