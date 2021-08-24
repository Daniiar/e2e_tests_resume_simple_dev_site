Given(/^visit "([^"]*)"$/) do |url|
  visit(url)
end

When(/^button "([^"]*)" is pressed$/) do |button|
  click_button(button)
end

When(/^button in dialog "([^"]*)" is pressed$/) do |button|
  find('.v-dialog--active').click_button(button)
end

When(/^button or link "([^"]*)" is pressed$/) do |link_or_button|
  click_on(link_or_button)
end