require './lib/chart/imdb_top_page'
require './lib/chart/imdb_rated_western_page'
require 'rubygems'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'test/unit'
require 'cucumber'
require 'hashie'
require 'rake'
require 'pry-byebug'

#-------------------------------------------------------------
## use this configuration, if you want to run those tests against Firefox browser
# profile = Selenium::WebDriver::Firefox::Profile.new
## change localization settings of the Firefox
# profile["intl.accept_languages"] = "en"
## init Firefox with new profile
# browser = Selenium::WebDriver.for :firefox, :profile => profile


#init Chrome
browser = Selenium::WebDriver.for :chrome
browser.manage.delete_all_cookies
browser.manage.window.maximize
browser.manage.timeouts.implicit_wait = 3 # seconds

Before do |scenario|
  @browser = browser
end

at_exit do |scenario|
  browser.quit
end