search_page = SearchPage.new

And(/^Verify search results are listed$/) do
  search_page.verify_search_results
end

Then(/^click 33 \- 44 from TV Screen Size results$/) do
  search_page.click_tv_screen_size
end
