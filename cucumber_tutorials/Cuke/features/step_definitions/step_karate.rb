Given(/^I navigate to Google$/) do
  @browser.goto "http://www.google.com.au"
end

When(/^I enter (\w+) into the search field$/) do |karate|
  searchField = @browser.text_field(:name,'q')
  searchButton = @browser.button(:name,'btnG')
  searchField.set karate
  searchButton.click
end

Then(/^the text (\w+) should be present$/) do |surname|
  @browser.div(:id => 'resultStats').wait_until_present
  (@browser.text.include? surname) == true
end

