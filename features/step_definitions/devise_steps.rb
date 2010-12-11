Given /^I log in with "([^"]*)" and "([^"]*)"$/ do |email, password|
  user = Factory(:user,:email=>email,:password=>password)
  visit "/"
  fill_in("Email", :with => email)
  fill_in("Password",:with=>password)
  click_button("Sign in")
end