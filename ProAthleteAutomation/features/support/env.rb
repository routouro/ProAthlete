require 'capybara'
require 'capybara/cucumber'
require 'rspec'

require 'selenium-webdriver'
require "test/unit/assertions"
require 'capybara/rspec'
World(Test::Unit::Assertions)
#World(FactoryGirl::Syntax::Methods)

Capybara.default_driver = :selenium

FileUtils.rm_rf 'report/images/'