Given(/^the following movies exist:$/) do |table|
  # table is a Cucumber::Ast::Table
  Movie.create(table.hashes)
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  expect(Movie.find_by_title(arg1).director).to eq(arg2)
end
