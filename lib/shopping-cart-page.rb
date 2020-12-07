class ShoppingCartPage < AbstractPage

  def initialize(driver)
    super(driver)
    @product = @browser.find_element(css: 'div.cart-table.shipping-and-delivery-details.cart-table-v2')
  end

  def validate_current_url(url)
    @browser.current_url == url
  end
  def product_is_present?
    @product.displayed?
  end
end

