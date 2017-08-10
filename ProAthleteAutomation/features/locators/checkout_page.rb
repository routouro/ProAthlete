class CheckoutPage

    mobile_complite_order_button = " | //button[contains(text(),'Review your order')] | //button[.='Process My Order']"

    @first_name = 'first-name'
    @last_name = 'last-name'
    @email = 'email-address'
    @shipping_street_address = 'address1'
    @shipping_city = 'city'
    @shipping_state = 'customer.ShippingAddress.State'
    @shipping_zip_code = 'zip-code'
    @credit_cart_number = 'credit-card-number'
    @exp_month = 'payment.ExperationMonth'
    @exp_year = 'payment.ExperationYear'
    @name_on_card = 'name-on-card'
    @security_code = 'cvv-number'
    @phone_area = 'phone-area-code'
    @phone_prefix = 'phone-prefix'
    @phone_suffix = 'phone-suffix'

    @billing_first_name = 'billing-first-name'
    @billing_last_name = 'billing-last-name'
    @billing_street_address = 'billing-address1'
    @billing_city = 'billing-city'
    @billing_state = 'customer.BillingAddress.State'
    @billing_zip_code = 'billing-zip-code'
    @billing_phone_area = 'billing-phone-area-code'
    @billing_phone_prefix = 'billing-phone-prefix'
    @billing_phone_suffix = 'billing-phone-suffix'

    @checkbox_billing_the_same = 'sameShipping'
    @complete_order_button = "//button[contains(.,'Complete My Order')] | //button[contains(.,'Complete Order')]"+mobile_complite_order_button

    mobile_order_number = " | //section[@id='content']//h1/strong"
    @order_number = "//div[@id='confirm-stuff']//div[@class='number']"+mobile_order_number
    @order_complete_page = "/cart/ordercomplete/4001111/?emailAddress=mike@beapro.com"

  class << self
    attr_accessor :first_name
    attr_accessor :last_name
    attr_accessor :email
    attr_accessor :shipping_street_address
    attr_accessor :shipping_city
    attr_accessor :shipping_state
    attr_accessor :shipping_zip_code
    attr_accessor :credit_cart_number
    attr_accessor :exp_month
    attr_accessor :exp_year
    attr_accessor :name_on_card
    attr_accessor :security_code
    attr_accessor :checkbox_billing_the_same
    attr_accessor :phone_area
    attr_accessor :phone_prefix
    attr_accessor :phone_suffix
    attr_accessor :complete_order_button
    attr_accessor :order_number
    attr_accessor :order_complete_page

    attr_accessor :billing_first_name
    attr_accessor :billing_last_name
    attr_accessor :billing_street_address
    attr_accessor :billing_city
    attr_accessor :billing_state
    attr_accessor :billing_zip_code
    attr_accessor :billing_phone_area
    attr_accessor :billing_phone_prefix
    attr_accessor :billing_phone_suffix
  end

end