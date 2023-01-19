class SearchPage

  def initialize
    @search_results_css = ".title-wrapper.title"
    @list_item_css = ".facet-option-list-item"
    @add_to_cart_on_result_page = ".sku-list-item-button"
  end

  def verify_search_results
    page.should have_selector(@search_results_css.to_str)
  end

  def click_tv_screen_size
    find(@list_item_css, text: "33\" - 44\"", exact: true, match: :first).click
    expect(page).to have_selector(@list_item_css, text: "33\" - 44\"")
  end


end
