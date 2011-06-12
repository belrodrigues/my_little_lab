Given /^I am at the landing page$/ do
#  pending # express the regexp above with the code you wish you had
  visit '/'
  assert page.has_content?('Email')
end

Then /^I see the message "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
