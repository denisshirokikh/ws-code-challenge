require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'syntax'
require 'capybara'
require_relative '../lib/abstract-page'
require_relative '../lib/home-page'
require_relative '../lib/product-page'
require_relative '../lib/shopping-cart-page'

$BASE_URL = 'https://www.williams-sonoma.com/'

module TestHelper

  def get_to_product_page
    home_page = HomePage.new(@browser)
    home_page.hover_over_cooks_tool_element
    home_page.flyout_menu_is_present?
    home_page.click_salt_and_pepper_mills
  end

  def get_to_results_page
    home_page = HomePage.new(@browser)
    home_page.perform_search
  end

  def validate_results
    search_page = SearchPage.new(@browser)
    search_page.search_results_displayed?
    search_page.quick_look_link_is_present?
    search_page.click_product_quick_look_link
    search_page.product_overlay_displayed?
    search_page.valid_price_shown
    search_page.valid_name_shown
  end


  def add_product_in_cart_by_clicking_title
    product_page = ProductPage.new(@browser)
    product_page.close_modal
    product_page.click_product_title
    product_page.click_add_to_cart_button
    product_page.overlay_is_present?
    product_page.click_checkout_button
  end

  def add_product_in_cart_by_clicking_image
    product_page = ProductPage.new(@browser)
    product_page.close_modal
    product_page.click_product_image
    product_page.click_add_to_cart_button
    product_page.overlay_is_present?
    product_page.click_checkout_button
  end

  def checkout
    base_url = $BASE_URL
    shopping_cart_page = ShoppingCartPage.new(@browser)
    shopping_cart_page.validate_current_url("#{base_url}/shoppingcart/")
    shopping_cart_page.product_is_present?
  end

  def visit(page)
    base_url = $BASE_URL
    @browser.get("#{base_url}#{page}")
  end


  def assert_link_present_with_text(link_text)
    @browser.links.each { |link|
      return if link.text.include?(link_text)
    }
    raise ("can't find the link containing text: #{link_text}")
  end

  def assert_element_present(element)
    @browser.find_element(element).displayed?
  end

  def assert_text_present(element, value)
    @browser.find_element(element).text == value
  end

end