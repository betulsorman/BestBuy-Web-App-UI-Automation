class ProductPage
  def initialize
    @save_button = 'Save'
    @saved_items_in_list_css= "div.sku-card-product-title a"
    @cart_subtotal=".sub-total.v-fw-medium"
  end


  def save_on_product_detail_page
    click_button(@save_button, match: :first, exact_text: true)
    page.should have_text("Saved")
  end

  def open_saved_items
    click_button("Saved Items")
  end

  def verify_saved_list
    expect(page).to have_selector(@saved_items_in_list_css)
    #  page.should have_selector(@save_items_title_css, text: $PRODUCT[:title])
  end

  def click_add_to_cart
    click_button("Add to Cart")
  end

  def verify_subtotal_exist
    expect(page).to have_selector(@cart_subtotal)
  end

end