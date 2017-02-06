
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
browser.goto 'https://web.facebook.com/events/birthdays'

browser.div(:id => 'events_birthday_view').div(:class => '_4-u2 _59ha _2fv9 _4-u8').ul(:class => '_3ng0').lis.each do |li|

   names << puts li.div(:class => 'clearfix _3ng1').div(:class => '_3ng2 lfloat _ohe').a.text

end	

s=gets 