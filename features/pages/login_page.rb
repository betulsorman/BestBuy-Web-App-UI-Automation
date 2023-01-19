class LoginPage

  def initialize
    @email_box = "#fld-e"
    @password_box = "#fld-p1"
    @sign_in_button_css = ".cia-form__controls__submit"
    @hi_username_css = ".v-p-right-xxs.v-ellipsis"
    @sign_in_with_gmail_css = ".social-button.undefined"
  end

  def fill_login_form(email, password)
    find(@email_box).send_keys(email)
    find(@password_box).send_keys(password)
    #fill_in(@email_box, with: email)
    #fill_in(@password_box, with: password)
  end

  def login_with_enter
    find(@sign_in_button_css).send_keys(:enter)
  end

  def verify_login
    expect(page).to have_selector(@hi_username_css, text: "Hi,")
  end

  def sign_in_with_gmail
    find(@sign_in_with_gmail_css).click
  end

end

