# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'cucumber/rake/task'
require 'ffi'
require 'pry'
require 'rspec'
require 'rubocop'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://automationpractice.com'
  config.default_max_wait_time = 10
end
