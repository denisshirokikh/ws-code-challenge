require_relative '../config/test_helper'

class SearchPage < AbstractPage

  def initialize(driver)
    super(driver)
    @search_results = @browser.find_element(css: '#search-tiles')
    @quick_look_element = @browser.find_element(css: '#search-tiles > ul > li:nth-child(1) > div.product-copy > quick-look > div > a')
    @product_overlay = @browser.find_element(css: '#quicklookOverlay')
    @search_page_product_price = @browser.find_element(css: '#search-tiles > ul > li:nth-child(1) > div.product-copy > span > span.price-state.price-sale > span > span')
    @search_page_product_name = @browser.find_element(css: '#search-tiles > ul > li:nth-child(1) > div.product-copy > a')
    @overlay_product_price = @browser.find_element(css: '#productSubsetItem1 > div > div > div.subset-pricing.subsetPricing > span > span.price-state.price-special > span.currency.currencyUSD')
    @overlay_product_name = @browser.find_element(css: '#purchasing-container > div.pip-info > div > h1')
    end

  def search_results_displayed?
    @search_results
  end
  def quick_look_link_is_present?
    @quick_look_element
  end
  def click_product_quick_look_link
    @quick_look_element.click
  end
  def product_overlay_displayed?
    @product_overlay
  end
  def valid_price_shown?
    @search_page_product_price.text.gsub(/^\d+(.\d{1,2})?$/) == @overlay_product_price.text
  end
  def valid_name_shown?
    @search_page_product_name.text == @overlay_product_name.text
  end
end