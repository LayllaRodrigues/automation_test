require "capybara"
require "capybara/cucumber"
require "webdrivers"
require "faker"

Capybara.ignore_hidden_elements = false


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://qa.youse.io"
end



