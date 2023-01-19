class HomePage

  def initialize
    @country = "[alt='United States']"
    @popup = ".c-modal-close-icon"
    @page_title = "Best Buy | Official Online Store | Shop Now & Save"
    @search_button = "[aria-label='submit search']"
    @search_param = "gh-search-input"

    @account_button = ".v-p-right-xxs.v-ellipsis"
    @sign_in_button = ".c-button.c-button-secondary.c-button-sm.sign-in-btn"

    @menu_button_css = ".hamburger-menu"
    @list_item_css = ".hamburger-menu-flyout-list-item"

  end

  def visit_home_page
    visit ""
  end

  def choose_a_country
    find(@country).click
  end

  def close_the_popup
    find(@popup).click if has_selector? @popup, wait: 5
  end

  def verify_page_title
    expect(page).to have_title @page_title
  end

  def set_search_box(search_param)
    find(id: @search_param).click.send_keys(search_param)
  end

  def click_search_button
    find(@search_button).click
  end

  def go_to_login_page
    find(@account_button).click
    #click_button(@account_button).click
    #find(@sign_in_button).click
    click_link("Sign In") #linktext gibi click_button
  end

  def click_menu_audio_headphones
    find(@menu_button_css).click
    find(@list_item_css, text:"Audio").click
    find(@list_item_css, text:"Headphones", match: :first).click
    find(@list_item_css, text:"Wireless Headphones", exact_text:true, match: :first).click
  end

end