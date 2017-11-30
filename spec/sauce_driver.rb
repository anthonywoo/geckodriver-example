require "selenium/webdriver"

module SauceDriver
  class << self
    def sauce_endpoint
      username = ENV['SAUCE_USERNAME']
      access_key = ENV['SAUCE_ACCESS_KEY']
      "https://#{username}:#{access_key}@ondemand.saucelabs.com:443/wd/hub"
    end

    def caps
      caps = {
        :platform => "Windows 10",
        :browserName => "Firefox",
        :version => "latest",
        :seleniumVersion => '3.7.0'
      }
    end

    def new_driver
      Selenium::WebDriver.for :remote, :url => sauce_endpoint, :desired_capabilities => caps
    end
  end
end
