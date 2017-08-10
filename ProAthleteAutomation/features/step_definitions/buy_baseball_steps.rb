
When(/^I select an item from the products grid "([^"]*)"$/) do |website|
  if website.include? "bats.com/mobile"
    find(:xpath, MainPage.mobile_baseball_bats).click
    find(:xpath, MainPage.mobile_bbccor).click
  end
  if website.include? "gloves.com/mobile"
    find(:xpath, MainPage.mobile_right_hand_thrower).click
    find(:xpath, MainPage.mobile_baseball_gloves).click
  end
  find(:xpath, MainPage.any_product).click
end

And(/^I add the item to the cart$/) do
  fill_in ProductPage.quantity, :with => '1'
  find(:xpath, ProductPage.add_to_cart_button).click
end

And(/^I select the checkout button$/) do
  find(:xpath, ShoppingCartPage.checkout_button).click
end

And(/^I am back to the checkout of "([^"]*)"$/) do |website|
  visit website+"/cart"
end

And(/^I fill in my customer shipping details "([^"]*)"$/) do |website|
  if website.include? "/mobile"
    fill_in CheckoutPageMobile.name, :with => (User.first_name+' '+User.last_name)
    fill_in CheckoutPageMobile.phone, :with => User.phone
    fill_in CheckoutPageMobile.email, :with => User.email
    fill_in CheckoutPageMobile.shipping_address, :with => User.address
    fill_in CheckoutPageMobile.shipping_city, :with => User.city
    fill_in CheckoutPageMobile.shipping_zip_code, :with => User.zipcode
    select_from_chosen(User.state, CheckoutPageMobile.shipping_state);
    find(:xpath, CheckoutPageMobile.continue_payment_button).click
  else
    fill_in CheckoutPage.first_name, :with => User.first_name
    fill_in CheckoutPage.last_name, :with => User.last_name
    fill_in CheckoutPage.phone_area, :with => User.phone_area
    fill_in CheckoutPage.phone_prefix, :with => User.phone_prefix
    fill_in CheckoutPage.phone_suffix, :with => User.phone_suffix
    fill_in CheckoutPage.email, :with => User.email
    fill_in CheckoutPage.shipping_street_address, :with => User.address
    fill_in CheckoutPage.shipping_city, :with => User.city
    select User.state, :from => CheckoutPage.shipping_state
    fill_in CheckoutPage.shipping_zip_code, :with => User.zipcode
    check CheckoutPage.checkbox_billing_the_same
  end
end

And(/^I fill in my payment details "([^"]*)"$/) do |website|
  if website.include? "/mobile"
    fill_in CheckoutPageMobile.credit_cart_number, :with => User.credit_card
    fill_in CheckoutPageMobile.name_on_card, :with => (User.first_name+' '+User.last_name)
    fill_in CheckoutPageMobile.security_code, :with => User.cvv
    select User.exp_month_date, :from => CheckoutPageMobile.exp_month
    select User.exp_year_date, :from => CheckoutPageMobile.exp_year
  else
    fill_in CheckoutPage.name_on_card, :with => (User.first_name+' '+User.last_name)
    fill_in CheckoutPage.credit_cart_number, :with => User.credit_card
    fill_in CheckoutPage.security_code, :with => User.cvv
    select User.exp_month_date, :from => CheckoutPage.exp_month
    select User.exp_year_date, :from => CheckoutPage.exp_year
  end
end

And(/^I fill in my billing information "([^"]*)"$/) do |website|
  if website.include? "/mobile"
    find(:xpath, CheckoutPageMobile.shipping_back_buttton).click
    uncheck CheckoutPageMobile.billing_checkbox
    fill_in CheckoutPageMobile.billing_name, :with => (User.first_name+' '+User.last_name)
    fill_in CheckoutPageMobile.billing_phone, :with => User.phone
    fill_in CheckoutPageMobile.billing_address, :with => User.billing_address
    fill_in CheckoutPageMobile.billing_city, :with => User.billing_city
    fill_in CheckoutPageMobile.billing_zip_code, :with => User.billing_zipcode
    select_from_chosen(User.state, CheckoutPageMobile.shipping_state)
    find(:xpath, CheckoutPageMobile.continue_payment_button).click
  else
    uncheck CheckoutPage.checkbox_billing_the_same
    fill_in CheckoutPage.billing_first_name, :with => User.first_name
    fill_in CheckoutPage.billing_last_name, :with => User.last_name
    fill_in CheckoutPage.billing_phone_area, :with => User.billing_phone_area
    fill_in CheckoutPage.billing_phone_prefix, :with => User.billing_phone_prefix
    fill_in CheckoutPage.billing_phone_suffix, :with => User.billing_phone_suffix
    fill_in CheckoutPage.billing_street_address, :with => User.billing_address
    fill_in CheckoutPage.billing_city, :with => User.billing_city
    select User.billing_state, :from => CheckoutPage.billing_state
    fill_in CheckoutPage.billing_zip_code, :with => User.billing_zipcode
  end
end

And(/^I select "([^"]*)" from the brand switch at the top of the page$/) do |website|
  MainPage.switch_brand =website
  find(:xpath, MainPage.switch_brand).click
end

And(/^I check items count "([^"]*)"$/) do |count|
  assert page.find(:xpath, ShoppingCartPage.subtotal_count).should have_text(count), 'Subtotal count dont match!'
end

And(/^I click order button "([^"]*)"$/) do |website|
  visit website+CheckoutPage.order_complete_page
  # find(:xpath, CheckoutPage.complete_order_button).click
end

Then(/^I capture an order number "([^"]*)"$/) do |number|
  assert page.find(:xpath, CheckoutPage.order_number).should have_text(number), 'Order number not found!'
end

def select_from_chosen(item_text, options)
  execute_script("var o = document.getElementsByName('#{options}')[0].options;
                    for (i = 0; i < o.length; i++) {
                        if (o[i].text === '#{item_text}') {
                            o.selectedIndex = i
                        }
                    }")
end
