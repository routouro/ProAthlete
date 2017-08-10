
And(/^I click Ask A Question "([^"]*)"$/) do |website|
  if website.include? "/mobile"
    find(:xpath, ProductPage.mobile_questions_and_answers_button).click
  end

  find(:xpath, ProductPage.ask_question_button).click
end

And(/^I enter a question "([^"]*)"$/) do |question|
  fill_in QuestionPage.question, :with => question
end

And(/^I enter a nickname "([^"]*)"$/) do |nickname|
  fill_in QuestionPage.nickname, :with => nickname
end

And(/^I enter a email "([^"]*)"$/) do |email|
  fill_in QuestionPage.email, :with => email
end

And(/^I click submit question button$/) do
  find(:xpath, QuestionPage.submit_question_button).click
end

Then(/^I see my question "([^"]*)","([^"]*)"$/) do |question, success_message|
  assert page.find(:xpath, ProductPage.question_success_msg).should have_text(success_message), 'Question not added!'
end