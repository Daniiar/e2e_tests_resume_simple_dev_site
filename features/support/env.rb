require 'capybara/cucumber'
require 'webdrivers'

# require 'selenium-webdriver'
# require 'capybara/session'
# require 'capybara/dsl'
require 'pry'

Capybara.register_driver :selenium do |app|
  # Capybara::Selenium::Driver.new(app, browser: :chrome)
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver = :selenium
end

# Capybara.default_driver = :selenium
# Capybara.javascript_driver = :chrome


