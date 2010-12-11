Given /^there is a quiz named "([^"]*)"$/ do |name|
  Factory(:quiz,:name=>name)
end