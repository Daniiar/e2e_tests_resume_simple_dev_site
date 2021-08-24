Given(/^I visit "([^"]*)"$/) do |url|
  visit(url)
end

And(/^I can enter "([^"]*)" into search field$/) do |text|
  find('input[name="q"]').set(text)
end

Then(/^I press enter of search field$/) do
  find('input[name="q"]').send_keys(:enter)
end

And(/^I see text "([^"]*)"$/) do |text|
  assert_text(text)
end
