Given(/the following movies exist/) do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create movie
    end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |arg1, arg2|
    temp_arg = Movie.find_by_title arg1
    arg2 == temp_arg.director
end
