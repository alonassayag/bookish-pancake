ENV['CONFIG'] ||= 'development' ;
ENV['NOTIFY'] ||= "false" ;
ENV['MAX_WAIT'] ||= "10"  ;

ENV['URL'] ||= "http://google.nl";  

ENV['BROWSER'] ||= "ie"  ;
require 'capybara/dsl' ;
require 'capybara/cucumber'; 
require 'capybara/rspec' ;
require 'chronic'   ;

Capybara.default_selector = :css ;
Capybara.default_driver = :selenium ;
Capybara.default_wait_time = ENV['WAIT'].to_i;
  
if ENV['BROWSER'] == "chrome"

 Capybara.register_driver(:selenium) { |app| Capybara::Selenium::Driver.new(app, :browser => :chrome) } 
 end  
if ENV['BROWSER'] == "ie"  
Capybara.register_driver(:selenium) { |app| Capybara::Selenium::Driver.new(app, :browser => :internet_explorer) } 
end  
if ENV['BROWSER'] == "headless"  
Capybara.javascript_driver = :webkit 
end 