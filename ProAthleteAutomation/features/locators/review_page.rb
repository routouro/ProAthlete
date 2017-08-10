class ReviewPage

  mobile_submit_review_button = " | //*[@id='write-review']/button"

  @title = "//input[@name='Title']"
  @pros = "//textarea[@name='Pros'] | //textarea[@name='pros']"
  @cons = "//textarea[@name='Cons'] | //textarea[@name='cons']"
  @nickname = "//input[@name='NickName'] | //input[@name='nickname']"
  @submit_review_button = "//*[@id='review-section']/form/div/button[contains(text(),'Submit your review')] | //button/span[contains(text(),'Submit Review')]"+mobile_submit_review_button

  #Stars
  @rating = ''
  @pop = ''
  @general_feel = ''
  @durability = ''
  @vibration = ''
  @glove_rating = ''

  class << self
    attr_accessor :email
    attr_accessor :title
    attr_accessor :pros
    attr_accessor :cons
    attr_accessor :nickname
    attr_accessor :submit_review_button
  end

  def ReviewPage.rating= (n)
    mobile_rating = " | //input[@name='rating' and @value='" + n + "']/following-sibling::label[1]"
    @@rating = "//input[@name='Rating' and @value='" + n + "']/following-sibling::label[1]" + mobile_rating
  end

  def ReviewPage.rating
    return @@rating
  end

  def ReviewPage.pop= (n)
    @@pop = "//input[@name='Pop' and @value='" + n + "']/following-sibling::label[1]"
  end

  def ReviewPage.pop
    return @@pop
  end

  def ReviewPage.general_feel= (n)
    @@general_feel = "//input[@name='General Feel' and @value='" + n + "']/following-sibling::label[1]"
  end

  def ReviewPage.general_feel
    return @@general_feel
  end

  def ReviewPage.durability= (n)
    @@durability = "//input[@name='Durability' and @value='" + n + "']/following-sibling::label[1]"
  end

  def ReviewPage.durability
    return @@durability
  end

  def ReviewPage.vibration= (n)
    graphics = " | //input[@name='Graphics' and @value='" + n + "']/following-sibling::label[1]"
    @@vibration = "//input[@name='Vibration' and @value='" + n + "']/following-sibling::label[1]"+graphics
  end

  def ReviewPage.vibration
    return @@vibration
  end

  def ReviewPage.glove_rating= (n)
    mobile_rating = " | //input[@name='rating' and @value='" + n.to_s + "']/following-sibling::label[1]"
    @@glove_rating = "//div[@id='modal-from']//ul/li[@tabindex='" + (n+1).to_s + "']"+mobile_rating
  end

  def ReviewPage.glove_rating
    return @@glove_rating
  end

  def ReviewPage.set_stars(rating_star, pop_star, general_feel_star, durability_star, vibration_star)
    ReviewPage.rating =rating_star
    ReviewPage.pop =pop_star
    ReviewPage.general_feel =general_feel_star
    ReviewPage.durability =durability_star
    ReviewPage.vibration =vibration_star
  end

end
