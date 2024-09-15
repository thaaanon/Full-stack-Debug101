require 'net/http'
require 'json'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response)

dog_breeds['message'].each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each { |sub_breed| puts "  * #{sub_breed}" } unless sub_breeds.empty?
end