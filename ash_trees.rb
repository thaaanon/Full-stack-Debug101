require 'net/http'
require 'json'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response)

ash_trees = trees.count { |tree| tree['common_name'].to_s.downcase.include?('ash') }

puts "Total number of Ash trees: #{ash_trees}"