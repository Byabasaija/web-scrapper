class Products 
    attr_accessor :name, :prices
  
    @@all = []
  
    def initialize(name, prices)
      @name = name
      @prices = prices
      @@all << self 
    end
  
    def self.all
      Scraper.scrape_products if @@all.empty?
      @@all 
    end
end