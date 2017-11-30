require_relative "spec_helper"
 
describe "Google's Search Functionality" do
  it "can find search results", :run_on_sauce => true do
    @driver.manage.timeouts.implicit_wait = 10
    @driver.navigate.to "http://www.google.com"
 
    link = @driver.find_element :link_text, 'Images'
    link.click
  end
end
