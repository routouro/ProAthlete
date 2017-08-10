
And(/^I click Review This$/) do
  find(:xpath, ProductPage.review_button).click
end

And(/^I click Review This "([^"]*)"$/) do |website|
  if website.include? "/mobile"
    find(:xpath, ProductPage.mobile_reviews_button).click
    find(:xpath, ProductPage.mobile_write_review_button).click
  else
    find(:xpath, ProductPage.review_button).click
  end
end

And(/^I enter a review "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |website, title, pros, cons, nickname|
  if website.include? "bats" or website.include? "gloves.com/mobile"
    find(:xpath, ReviewPage.title).set(title)
  end
  find(:xpath, ReviewPage.pros).set(pros)
  find(:xpath, ReviewPage.cons).set(cons)
  find(:xpath, ReviewPage.nickname).set(nickname)

  if website.include? "bats"
    ReviewPage.set_stars('5','5','5','5','5')
    find(:xpath, ReviewPage.rating).click
    find(:xpath, ReviewPage.pop).click
    find(:xpath, ReviewPage.general_feel).click
    find(:xpath, ReviewPage.durability).click
    find(:xpath, ReviewPage.vibration).click
  else
    ReviewPage.glove_rating =5
    find(:xpath, ReviewPage.glove_rating).click
  end

end

And(/^I click submit review button$/) do
  find(:xpath, ReviewPage.submit_review_button).click
end

Then(/^I see my review "([^"]*)", "([^"]*)", "([^"]*)"$/) do |pros, cons, nickname|
  assert page.find(:xpath, ProductPage.pros_review).should have_text(pros), 'Pros of review not found!'
  assert page.find(:xpath, ProductPage.cons_review).should have_text(cons), 'Cons of review not found!'
end

Then(/^I see my review "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |pros, cons, nickname, success_message|
  assert page.find(:xpath, ProductPage.review_success_msg).should have_text(success_message), 'Review not added'
end