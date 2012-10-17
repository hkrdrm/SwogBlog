require 'spec_helper'
include Capybara::DSL

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Swog Blog'" do
      visit '/static_pages/home'
      page.should have_content('Swog Blog')
      page.should_not have_selector('title', :text => '| Home')
    end
  end
end