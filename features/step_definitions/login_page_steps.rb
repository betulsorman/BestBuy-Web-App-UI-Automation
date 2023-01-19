login_page = LoginPage.new

And(/^Fill login form$/) do
  login_page.fill_login_form(ACCOUNT[:account][:email],
                             ACCOUNT[:account][:password])
end

Then(/^with Enter button$/) do
  login_page.login_with_enter
end

And(/^Verify successful login$/) do
  login_page.verify_login
end

