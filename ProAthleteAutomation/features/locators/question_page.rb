class QuestionPage

  mobile_submit_question_button = " | //button[@id='qa-submit']"

  @submit_question_button = "//button[contains(text(),'Submit Question')]"+mobile_submit_question_button
  @question = 'Text'
  @nickname = 'SubmittedBy'
  @email = 'EmailAddress'

  class << self
    attr_accessor :submit_question_button
    attr_accessor :question
    attr_accessor :nickname
    attr_accessor :email
  end

end
