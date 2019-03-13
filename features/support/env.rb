require 'capybara/cucumber'
require 'capybara'
require 'selenium-webdriver'
require 'pry'
require 'cucumber'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 20
end