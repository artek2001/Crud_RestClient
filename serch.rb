require 'rest-client'
require 'pry'

puts "Choose your option"
puts "1) Search in Google"
user_choice = gets.to_i

#Initialize
url_ready = ""

if user_choice == 1
	puts "What do you want to search for?"
	url_ready = gets.to_s
	response = RestClient.get("http://google.com/search?", params: { "q" => url_ready })

	puts response.body
	File.write("/home/artek/myprojects/crud_restclient/page.html", response.body)
end