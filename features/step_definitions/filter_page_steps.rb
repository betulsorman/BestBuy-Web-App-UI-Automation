filter_page = FilterPage.new

Then(/^Filter Brands by "([^"]*)" and select$/) do |brand|
  filter_page.filter_brand_box(brand)
end

Then(/^Click 2nd product on the search result page$/) do
  filter_page.select_second_product
end