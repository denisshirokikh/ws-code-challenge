require_relative '../config/test_helper'

class HomePage < AbstractPage

  def initialize(driver)
    super(driver)
    @navbar_cooks_folder = @browser.find_element(css: 'a.topnav-cooks-tools')
    @salt_and_pepper_mils = @browser.find_element(css: '#topnav-container > ul > li.dropDown.hoverFade.category-1 > div > div:nth-child(2) > ul:nth-child(2) > li:nth-child(1) > a')
    @flyout_menu = @browser.find_element(css: '#topnav-container > ul > li.dropDown.hoverFade.category-1 > div')
    @search_field = @browser.find_element(css: '#search-field')
    @search_button = @browser.find_element(css: '#btnSearch')
  end

  def hover_over_cooks_tool_element
    @browser.action.move_to(@navbar_cooks_folder).perform
  end
  def click_salt_and_pepper_mills
    @salt_and_pepper_mils.click
  end
  def flyout_menu_is_present?
    @flyout_menu
  end
  def perform_search
    @search_field.send_keys('fry pan')
    @search_button.click
  end
end