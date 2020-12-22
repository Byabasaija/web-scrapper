require_relative '../lib/scraper.rb'
require 'httparty'
require 'nokogiri'

describe Scraper do
  scraper = Scraper.new
  describe '#acces_product_name' do
    it 'checks if the method returns an array of product names' do
      expect(scraper.access_product_name.is_a?(Array)).to eq(true)
    end
  end
  describe '#acces_product_price' do
    it 'checks if the method returns an array of product prices' do
      expect(scraper.access_product_price.is_a?(Array)).to eq(true)
    end
  end
end
