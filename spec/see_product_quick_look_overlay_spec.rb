require_relative '../config/test_helper'

describe 'Application:Quick Look Overlay Feature' do
  include TestHelper

  it 'search takes user to the results page' do
    get_to_results_page
  end

  it 'shows correct product price and name on quick look overlay' do
    validate_results
  end

  after(:each) do
    @browser.manage.timeouts.implicit_wait = 3
  end

  before :all do
    @browser = Selenium::WebDriver.for :firefox
    @browser.manage.timeouts.page_load = 5
    @browser.manage.window.maximize
    @browser.navigate.to $BASE_URL
  end

  after :all do
    @browser.close
  end

end