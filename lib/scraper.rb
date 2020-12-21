class Scraper
  def self.scrape_products
    request = HTTParty.get('https://www.jumia.ug/mlp-everything-for-him/men-clothing/')
    page = Nokogiri::HTML(request.body)
    products = page.css('.info')
    products.select do |specs|
      name = specs.css('.name').text.strip
      prices = specs.css('.prc').text.strip

      Products.new(name, prices)
    end
  end
end
