class GooglePage

  def initialize
    @gmail_address_input_id = "identifierId"
    @gmail_password_input_css = "password"
  end

  def click_with_google
    click_button("Sign In with Google")
    Helper.switch_to_last_window
  end

  def fill_in_email(gmail)
    fill_in(@gmail_address_input_id, with: gmail).send_keys(:enter)
  end

  def fill_in_gmail_password(gmail_password)
    fill_in(@gmail_password_input_css, with: gmail_password).send_keys(:enter)
    Helper.switch_to_first_window
  end

end


