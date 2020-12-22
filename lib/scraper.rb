class Scraper
  attr_accessor :page
  def initialize
    request = HTTParty.get('https://www.jumia.ug/mlp-everything-for-him/men-clothing/')
    @page = Nokogiri::HTML(request.body)
  end

  def access_product_name
    scrape_products.css('.name').children.map(&:text)
  end

  def access_product_price
    scrape_products.css('.prc').children.map(&:text)
  end

  def scrape_products
    page.css('.info')
  end
end
