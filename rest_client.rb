require 'rest-client'

puts "."*10

# Get user search
puts "Enter Band or Album"
input = gets.chomp

# Format query uri
input = input.split(" ")
input = input.join("+")

# Search Bandcamp for song or artist
response = RestClient.get "https://www.discogs.com/search?q=#{input}&type=all"

# Print response codes to terminal
puts "\n\nStatus Code: #{response.code}\n\n"
puts "Headers: #{response.headers}\n\n"
puts "Cookies: #{response.cookies}\n\n"
