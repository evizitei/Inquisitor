Given /^there is a quiz named "([^"]*)"$/ do |name|
  Factory(:quiz,:name=>name)
end

Given /^there is a student with ID "([^"]*)"$/ do |student_id|
  Factory(:student,:organization_id=>student_id)
end

Given /^there are no students in the system$/ do
  Student.delete_all
end

Given /^the database is seeded$/ do
  load "#{Rails.root}/db/seeds.rb"
end