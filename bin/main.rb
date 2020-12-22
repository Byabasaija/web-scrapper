
require_relative '../lib/scraper.rb'

require 'httparty'
require 'pry'
require 'nokogiri'
require 'open-uri'
require 'cli-colorize'

def start
  puts '************************************'
  puts ''
  puts ' Here there, Welcome once again!'
  puts ''
  puts 'Ready to serve you with products and there corresponding prices at Jumia Uganda'
  puts '************************************'
end

def continue
  puts 'Please type "continue" to continue'
  input1 = gets.strip
  until input1 == 'continue'
    puts 'Please type "continue" to continue'
    input1 = gets.strip
  end
  puts ''
end

def display_products
  puts 'You made it!'
  puts 'Here is your list of products and their prices on jumia uganda'
  puts ''
  scraper = Scraper.new
  name = scraper.access_product_name
  price = scraper.access_product_price
  (0...price.size).each do |index|
    puts "Product #{index + 1} "
    puts "Name: #{name[index].yellow} : Price #{price[index].blue}"
  end

  puts ''
end

puts start
puts continue
puts display_products
