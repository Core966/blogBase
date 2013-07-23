require 'spec_helper'

feature "site content" do
  scenario "Home site greets properly" do
    visit main_pages_home_path
    #page.should have_css?('title:contains("Welcome to blogBase!")')
    #page.has_content?('fake text')
    #expect(page).to have_text("Welcome to blogBase!")
    expect(page).to have_css('h1:contains("Welcome to blogBase!")')
  end
end

feature "navigating menu" do
  scenario "User should land on blogs page when he clicks on the blogs link at home page" do
    visit main_pages_home_path
    click_link "blogs_link"
    current_path.should == "/main_pages/blogs"
  end
  scenario "User should land on about page when he clicks on the about link at home page" do
    visit main_pages_home_path
    click_link "about_link"
    current_path.should == "/main_pages/about"
  end
  scenario "User should land on the same page when he clicks on the home link at home page" do
    visit main_pages_home_path
    click_link "home_link"
    current_path.should == "/main_pages/home"
  end
end
    