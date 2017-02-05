
require 'watir'

browser = Watir::Browser.new :chrome
browser.goto 'https://www.facebook.com'
browser.text_field(:id => 'email').set 'mk9990143266@gmail.com'
browser.text_field(:id => 'pass').set 'password'
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
e = nil
until e 
	print 'Want to exit y/n '
	s = gets.chomp
	if s == 'y' 
		e =1
	else
		e = nill
	end
end