product_page = ProductPage.new

Then(/^Click Save button on product detail page$/) do
  product_page.save_on_product_detail_page
end

Then(/^Open Saved Items list$/) do
  product_page.open_saved_items
end

Then(/^Verify that the title of saved product is on the list$/) do
  product_page.verify_saved_list
end

Then(/^Add to Cart to 2nd product$/) do
  product_page.click_add_to_cart
end

Then(/^Verify the Cart Subtotal$/) do
  product_page.verify_subtotal_exist
end