require_relative '../config/test_helper'

describe 'Application:Add to cart Feature' do
  include TestHelper

  it 'navigates to product page' do
    get_to_product_page
  end

  it 'adds product in th cart' do
    add_product_in_cart_by_clicking_title
  end

  it 'checkout added product' do
    checkout
  end

  after(:each) do
    @browser.manage.timeouts.implicit_wait = 3
  end

  before :all do
    @browser = Selenium::WebDriver.for :firefox
    @browser.manage.timeouts.page_load = 10
    # @browser.manage.window.maximize
    @browser.navigate.to $BASE_URL
  end

  after :all do
    @browser.close
  end

end