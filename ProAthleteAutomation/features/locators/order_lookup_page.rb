class OrderLookupPage

  mobile_email_order_address = " | //*[@id='order-lookup-entry'] | //*[@id='order-lookup-email']//input[@name='emailAddress']"
  mobile_lookup_order_button = " | //*[@id='order-lookup-form']/div/button[contains(text(),'Lookup Order')]"
  mobile_order_number = " | //*[@id='order-lookup-form']//input[@name='orderNumber']"
  shipping_zip_code = " | //*[@id='order-lookup-form']//input[@name='zipCode']"
  mobile_email_order_button = " | //button[contains(text(),'Email My Order')] | //button[contains(text(),'Email Orders')]"
  @mobile_email_order_success_msg = "//*[@id='order-lookup-message']"

  # @order_number = "//*[@id='order-lookup-form']//input[@name='orderNumber']"
  # @shipping_zip_code = "//*[@id='order-lookup-form']//input[@name='zipCode']"
  @order_number = 'orderNumber'
  @shipping_zip_code = 'zipCode'
  @lookup_order_button = "//button[.='Lookup Order']"+mobile_lookup_order_button
  @order_number_text = '//h1'
  @email_order_success_msg = "//*[@id='list-status-message']/strong"
  @email_order_address = "//*[@id='order-lookup-form']//input[@name='emailAddress']"+mobile_email_order_address
  @email_order_button = "//*[@id='email-order-button']"+mobile_email_order_button

  class << self
    attr_accessor :order_number
    attr_accessor :order_number_text
    attr_accessor :shipping_zip_code
    attr_accessor :lookup_order_button
    attr_accessor :email_order_success_msg
    attr_accessor :email_order_address
    attr_accessor :email_order_button
    attr_accessor :mobile_email_order_success_msg
  end

end

