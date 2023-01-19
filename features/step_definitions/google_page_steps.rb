gmail_page = GooglePage.new

Then(/^Sign in with Google$/) do

  gmail_page.fill_in_email(ACCOUNT[:account][:email])
  gmail_page.fill_in_gmail_password(ACCOUNT[:account][:password])
end

Then(/^open google$/) do
  gmail_page.click_with_google
end

