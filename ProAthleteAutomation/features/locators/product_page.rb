class ProductPage

  mobile_add_to_cart_button = " | //*[@id='addToCartForm']/button | //*[@id='add-item-to-cart-form']/button"
  mobile_ask_question_button = " | //label[contains(text(),'Ask a question')]"
  mobile_nickname_review = "| //article[1]/header[@class='review-item_header']/span[@class='review-item_author']/span"
  mobile_pros_review = " | //article[1]/p[@itemprop='description'][contains(.,'Pros')]"
  mobile_cons_review = " | //article[1][@itemprop='review']/p[2][contains(.,'Cons')]"

  @mobile_questions_and_answers_button = "//label[contains(text(),'Questions & Answers')]"
  @mobile_reviews_button = "//label[contains(text(),'Reviews')]"
  @mobile_write_review_button = "//label[contains(text(),'Write A Review')]"

  @add_to_cart_button = "//button/div/span[.='Add to Cart']"+mobile_add_to_cart_button
  @quantity = 'quantity'

  @ask_question_button = "//a[contains(text(),'Ask A Question')]"+mobile_ask_question_button
  @question_text = "//div[@id='QA']//div[@class='qaList clearfix']/div[1]/span[@class='productQuestionWrap']/p"
  @question_success_msg = "//div[@id='QA']//div[@class='qalistWrap showWraps']/span[1] | //div[@id='cboxLoadedContent']//h2 | //form[@id='ask-question']/div"

  @review_button = "//*[@id='review-section']//div/p/button[contains(text(),'Review This Bat')] | //div[@class='reviewProduct']//a[contains(text(),'Review This Glove')]"
  @pros_review = "//div[@class='reviewerDetails']/div[strong[contains(.,'Pros')]]/span"+mobile_pros_review
  @cons_review = "//div[@class='reviewerDetails']/div[strong[contains(.,'Cons')]]/span"+mobile_cons_review
  @nickname_review = "//div[@class='reviewsList showWraps']/div[1]//strong/span[@class='reviewer']"+mobile_nickname_review
  @review_success_msg = "//div[@class='rating']/p | //article[@class='review']/p | //div[@id='detail-content']//div[@class='accord_contents']/div/div[2]/div"

  class << self
    attr_accessor :add_to_cart_button
    attr_accessor :ask_question_button
    attr_accessor :mobile_questions_and_answers_button
    attr_accessor :question_text
    attr_accessor :review_button
    attr_accessor :quantity

    attr_accessor :pros_review
    attr_accessor :cons_review
    attr_accessor :nickname_review
    attr_accessor :review_success_msg
    attr_accessor :question_success_msg

    attr_accessor :mobile_reviews_button
    attr_accessor :mobile_write_review_button
  end

end