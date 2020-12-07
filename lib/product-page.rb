class ProductPage < AbstractPage

  def initialize(driver)
    super(driver)
    @close_modal_button = @browser.find_element(css: '#join-email-campaign > div:nth-child(1) > div:nth-child(1) > dialog:nth-child(1) > button:nth-child(1)')
    @add_to_cart_button = @browser.find_element(id: 'primaryGroup_addToCart_0')
    @overlay = @browser.find_element(id: 'racOverlay')
    @checkout_button = @browser.find_element(id: 'anchor-btn-checkout')
    @product_title = @browser.find_element(:link_text, 'Trudeau Graviti Electric Salt & Pepper Mill Set, Gunmetal')
    @product_image = @browser.find_element(css: '#subcat-page > div.sub-cat-container > section > div:nth-child(9) > div > div:nth-child(13) > div > div > a > img'
  end

  def close_modal
    sleep 3
    @browser.execute_script("document.querySelectorAll('button.btnClose')[2].click()")
  end
  def click_add_to_cart_button
    @add_to_cart_button.click
  end
  def overlay_is_present?
    @overlay
  end
  def click_checkout_button
    @checkout_button.click
  end
  def click_product_title
    @product_title.click
  end
  def click_product_image
    @product_image.click
  end
end
