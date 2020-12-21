

require_relative "../lib/products.rb"
require_relative "../lib/scraper.rb"


require 'httparty'
require 'nokogiri'
require 'open-uri'
require 'cli-colorize'


class Interface

    def start 
      
      puts "************************************"
      puts ""
      puts " Hey there, Welcome once again!"
      puts ""
      puts 'Ready to serve you with products and their corresponding prices at Jumia Uganda'
      puts "************************************"

        get_products
        continue
        display_products
        
        user_exit_message
    end
   
    def get_products 
      @products = Products.all  
    end 

    def continue
        puts 'Please type "continue" to continue'
      @input1 = gets.strip
      until @input1 == "continue"
        puts 'Please type "continue" to continue'
        @input1 = gets.strip
      end 
      puts ""
    end

   
    def display_products 
      puts 'You made it!'
      puts "Here is your list of products and their prices on jumia uganda"
      puts ""
      @products.each.with_index(1) do |product, index| 
        puts "#{index}. #{product.name.yellow} : #{product.prices.blue}"
     end 
      puts ""
    end
   
    def user_exit_message
      
      puts "Thank you for visiting choosing us, come back anytime"
       
    end 
  
  end  

  Interface.new.start



