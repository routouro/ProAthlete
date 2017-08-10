$DEFAULT_ELEMENT_TIMEOUT = 30

Before do |scenario|
  page.driver.browser.manage.window.maximize
  # $driver = Selenium::WebDriver.for :firefox
  # $driver.manage.timeouts.implicit_wait = $DEFAULT_ELEMENT_TIMEOUT
  # $driver.manage.window.maximize
end

After do |scenario|
  if scenario.failed?
    page.driver.browser.save_screenshot("report/images/#{scenario.__id__}.png")
    embed("#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  end
end


