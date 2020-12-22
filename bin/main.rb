#!/usr/bin/env ruby

require_relative '../lib/scraper.rb'

require 'httparty'
require 'nokogiri'
require 'cli-colorize'

def start
  puts '************************************'.yellow
  puts ''
  puts ' Here there, Welcome once again!'
  puts ''
  puts 'Ready to serve you with products and there corresponding prices at Jumia Uganda'
  puts '************************************'.yellow
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
  puts 'You made it!'.yellow
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

def user_exit_message
  puts 'Thank you for using our program. Return anytime'.blue
end

puts start
puts continue
puts display_products
puts user_exit_message
