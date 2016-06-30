Given(/I have added "(.*)" with rating "(.*)"/) do |title, rating|
  steps %Q{
    Given I am on the Create New Movie page
    When  I fill in "Title" with "#{title}"
    And   I select "#{rating}" from "Rating"
    And   I press "Save Changes"
  }
end

Then(/I should see "(.*)" on (.*)/) do |string1, path|
  steps %Q{Given I am on #{path}}
  regexp = /#{string1}/
  expect(page.body).to match(regexp)
end