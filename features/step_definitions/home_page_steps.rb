home_page = HomePage.new

Given(/^Visit Homepage$/) do
  home_page.visit_home_page
end

Then(/^Choose a Country$/) do
  home_page.choose_a_country
end

Then(/^Close the Popup$/) do
  home_page.close_the_popup
end

Then(/^Verify page title is Best Buy | Official Online Store | Shop Now & Save
$/) do
  home_page.verify_page_title
end

And(/^Maximize window$/) do
  page.driver.browser.manage.window.maximize
end

Then(/^Search for "([^"]*)"$/) do |search_param|
  home_page.set_search_box(search_param)
  home_page.click_search_button
end

Then(/^Go to Sign In page$/) do
  home_page.go_to_login_page
end

Then(/^Click Menu Audio Headphones Wireless Headphones from dropdown$/) do
  home_page.click_menu_audio_headphones
end