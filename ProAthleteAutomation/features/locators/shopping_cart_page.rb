class ShoppingCartPage

  mobile_checkout_button = " | //div[@id='checkout-complete']/button[contains(text(),'Checkout')] | //button[@id='jb-checkout']"

  @checkout_button = "//div[@id='credit-card-payment']/button | //a[@class='green-checkout-button']"+mobile_checkout_button
  @subtotal_count = "//div[@class='cartTotal']//span | //span[@id='cart-count']"
  @checkout_icon = "//div[@class='unified-cart__checkout']/a[@title='See what you have in your JustBats cart']"

  class << self
    attr_accessor :checkout_button
    attr_accessor :subtotal_count
    attr_accessor :checkout_icon
  end

end