class MainPage

  mobile_any_product = " | //*[@id='product-grid']/div[1]/div/div/a/img | //*[@id='content']/div/div[@class='section-content']/div/ul/li[1]"
  mobile_order_lookup_button = " | //label[contains(text(),'Order Lookup')] | //*[@id='content']//a[contains(text(),'Order Lookup')]"
  @order_lookup_button = "//div[@class='unified-cart']//a[@title='Order Lookup']"+mobile_order_lookup_button
  @any_product = "//div[@id='page']/div[2]/div[1]/div/ul/li[1]/div/div[2]/div[1]/a[1]/img | //div[@id='page']/div[2]/div/ul/li[1]/div[2]/div[1]/a[1]/img"+mobile_any_product
  @@switch_brand = ""

  #mobile
  @mobile_baseball_bats = "//div[@class='accord']/label[contains(text(),'Baseball Bats')]"
  @mobile_bbccor = "//div[@class='accord']/div[@class='accord_contents']/a/strong[contains(text(),'BBCOR')]"
  @mobile_right_hand_thrower = "//label[@for='section-baseball']"
  @mobile_baseball_gloves = "//div[@class='accord']/div[@class='accord_contents']/a/strong[contains(text(),'Baseball')]"

  class << self
    attr_accessor :order_lookup_button
    attr_accessor :any_product
    attr_accessor :mobile_baseball_bats
    attr_accessor :mobile_bbccor
    attr_accessor :mobile_right_hand_thrower
    attr_accessor :mobile_baseball_gloves
  end

  def MainPage.switch_brand= (website)
    if website.include? "/mobile"
      website = website.sub(".com/mobile","")
    end
    str = website.sub("http://www.", "")
    @@switch_brand = "//nav/a[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'),'" + str + "')]"
  end

   def MainPage.switch_brand
     return @@switch_brand
   end

end