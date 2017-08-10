
Given(/^I on main page of site "(.*?)"$/) do |url|
  visit url
end

# Order number and zip

When(/^I click on order lookup link$/) do
  find(:xpath, MainPage.order_lookup_button).click
end

When(/^type order number "(.*?)"$/) do |order_num|
  fill_in OrderLookupPage.order_number, :with => order_num
end

When(/^type ZIP "(.*?)"$/) do |zip|
  fill_in OrderLookupPage.shipping_zip_code, :with => zip
end

When(/^click order lookup$/) do
  find(:xpath, OrderLookupPage.lookup_order_button).click
end

Then(/^I should see an order number "(.*?)"$/) do |order_num|
  assert page.find(:xpath, OrderLookupPage.order_number_text).should have_text(order_num), 'Order not found!'
end

# Order email

And(/^enter email address "([^"]*)"$/) do |email|
  find(:xpath, OrderLookupPage.email_order_address).set(email)
end

And(/^click email orders$/) do
  find(:xpath, OrderLookupPage.email_order_button).click
end

Then(/^I should see a success messages "([^"]*)"$/) do |email|
  assert page.find(:xpath, OrderLookupPage.email_order_success_msg).should have_text(email), 'Order email message not found!'
end

Then(/^I should see a success messages "([^"]*)","([^"]*)"$/) do |email, website|
  if website.include? "/mobile"
    assert page.find(:xpath, OrderLookupPage.mobile_email_order_success_msg).should have_text('were emailed'), 'Order email message not found!'
  else
    assert page.find(:xpath, OrderLookupPage.email_order_success_msg).should have_text(email), 'Order email message not found!'
  end

end