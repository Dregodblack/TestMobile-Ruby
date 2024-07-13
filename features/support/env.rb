require 'cucumber'
require 'appium_lib'
require 'rspec/expectations'
require 'pry'
require 'report_builder'

require_relative 'page_helper.rb'
require_relative 'commons.rb'

World(PageObjects, CommonsHelper)

ANDROID = ENV["ANDROID"]
IOS = ENV["IOS"]
SISTEMA = ANDROID.eql?('true') ? 'android' : 'ios'

def define_caps
  caps_file = YAML.load_file("app_config/capabilities.yml")
  caps_file[SISTEMA]
end

Appium::Driver.new(
  {
    'caps' => define_caps
  },
  true
)
Appium.promote_appium_methods Object