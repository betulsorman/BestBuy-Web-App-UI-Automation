class FilterPage

  def initialize
    @filter_brand_id = "brand_facet-search-bar-input"
    @product_css = "li.sku-item:nth-of-type(3) div.sku-title a"
  end

  def filter_brand_box(brand)
    fill_in(@filter_brand_id, with: brand)
    find(id: @filter_brand_id).send_keys(:arrow_down).send_keys(:enter)
    page.should have_button(brand)
    expect(page).to have_selector(@product_css, text: brand, exact_text: false)
  end

  def select_second_product
    find(@product_css).click
  end



end
