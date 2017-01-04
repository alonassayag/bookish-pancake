Given(/^I go to the Deus website$/) do
 visit 'http://deuscustoms.com/' 
end

When(/^I click the button webshop$/) do
   find(:xpath, "//*[@id='menu-item-38597']/a").click
end

Then(/^I should select Europe$/) do
  find(:xpath,"//*[@id='regionShopForm']/div/ul/li[3]/a").click
end

Given(/^I am on the webshop of Deus$/) do
  find(:xpath, "//*[@id='mainmen']/li[8]/a" ).text.should == "SHOP"
end

Given(/^I select one tshirt from tees$/) do
  find(:xpath,"//*[@id='shopcategories']/ul[2]/li[2]/a/div").click
end

Given(/^I select a Tshirt$/) do
  find(:xpath,"//*[@id='product-loop-heinrich']/div[1]/a/img").click
end

Given(/^I select Small$/) do
 find(:xpath,"//*[@id='product-select-option-0']").click
select(value="Small", :from => "product-select-option-0")
end


Given(/^I select Grey Marle$/) do
  find(:xpath,"//*[@id='product-select-option-1']").click
 select(value="Grey Marle", :from => "product-select-option-1")
end

Given(/^add tshirt to Cart$/) do
  find(:xpath,"//*[@id='add-to-cart']").click
end

Given(/^I click on Home button$/) do
  find(:xpath,".//*[@id='mainShopNav']/li[1]/a").click
end

Given(/^I select one accessoire from accessories$/) do
  find(:xpath,"//*[@id='shopcategories']/ul[2]/li[3]/a/div").click
  find(:xpath,"//*[@id='shopsidenav']/ul[1]/li[1]/a").click
end

Given(/^select the book take the road$/) do
  find(:xpath,"//*[@id='product-loop-take-the-road']/div[1]/a/img").click
end

Given(/^check price is "(.*?)" euro$/) do  
 find(:xpath,"//*[@id='productcopy']/div/h2")
 Then /^I should see "(.*?)"$/
end


When(/^book title is Take the Road$/) do
 if @browser.text.include? "Take the Road"
 puts "Book text validated"
end
end


Given(/^add to shopping cart$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^add to ShopCart if price is Sale$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

#Then(/^I should have "([^"]*)" Items in my shopping cart$/) do |Items|
  #pending # Write code here that turns the phrase above into concrete actions
  
#end

