class CheckoutPageMobile

  @name = 'customer.ShippingAddress.FullName'
  @first_name = 'customer.ShippingAddress.FirstName'
  @last_name = 'customer.ShippingAddress.LastName'
  @email = 'customer.EmailAddress'
  @shipping_address = 'customer.ShippingAddress.AddressOne'
  @shipping_city = 'customer.ShippingAddress.City'
  @shipping_state = 'customer.ShippingAddress.State'
  @shipping_zip_code = 'customer.ShippingAddress.ZipCode'
  @credit_cart_number = 'payment.CardNumber'
  @exp_month = 'payment.ExperationMonth'
  @exp_year = 'payment.ExperationYear'
  @name_on_card = 'payment.NameOnCard'
  @security_code = 'payment.CsvNumber'
  @phone = 'customer.ShippingAddress.PhoneFull'
  @phone_area = 'customer.ShippingAddress.PhoneAreaCode'
  @phone_prefix = 'customer.ShippingAddress.PhonePrefix'
  @phone_suffix = 'customer.ShippingAddress.PhoneSuffix'

  @billing_name = 'customer.BillingAddress.FullName'
  @billing_first_name = 'customer.BillingAddress.FirstName'
  @billing_last_name = 'customer.BillingAddress.LastName'
  @billing_address = 'customer.BillingAddress.AddressOne'
  @billing_city = 'customer.BillingAddress.City'
  @billing_state = 'customer.BillingAddress.State'
  @billing_zip_code = 'customer.BillingAddress.ZipCode'
  @billing_phone = 'customer.BillingAddress.PhoneFull'
  @billing_phone_area = 'customer.BillingAddress.PhoneAreaCode'
  @billing_phone_prefix = 'customer.BillingAddress.PhonePrefix'
  @billing_phone_suffix = 'customer.BillingAddress.PhoneSuffix'

  @complete_order_button = "//button[contains(text(),'Review your order')] | //button[.='Process My Order']"
  @continue_payment_button = "//form[@id='jb-checkout-form']/fieldset[1]/button"
  @shipping_back_buttton = "//div[@id='checkout-progress']/button[contains(text(),'1.Shipping')]"

  @billing_checkbox_gloves = 'sameasshipping'
  @billing_checkbox_gloves_other = 'sameShipping'
  @billing_checkbox = 'copyShipInfo'

  class << self
    attr_accessor :name
    attr_accessor :first_name
    attr_accessor :last_name
    attr_accessor :email
    attr_accessor :shipping_address
    attr_accessor :shipping_city
    attr_accessor :shipping_state
    attr_accessor :shipping_zip_code
    attr_accessor :credit_cart_number
    attr_accessor :exp_month
    attr_accessor :exp_year
    attr_accessor :name_on_card
    attr_accessor :security_code
    attr_accessor :checkbox_billing_the_same
    attr_accessor :phone
    attr_accessor :phone_area
    attr_accessor :phone_prefix
    attr_accessor :phone_suffix
    attr_accessor :complete_order_button
    attr_accessor :continue_payment_button
    attr_accessor :shipping_back_buttton

    attr_accessor :billing_name
    attr_accessor :billing_first_name
    attr_accessor :billing_last_name
    attr_accessor :billing_address
    attr_accessor :billing_city
    attr_accessor :billing_state
    attr_accessor :billing_zip_code
    attr_accessor :billing_phone
    attr_accessor :billing_phone_area
    attr_accessor :billing_phone_prefix
    attr_accessor :billing_phone_suffix
    attr_accessor :billing_checkbox_gloves
    attr_accessor :billing_checkbox
  end

end