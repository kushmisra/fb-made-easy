
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
# ours tests file
s = gets