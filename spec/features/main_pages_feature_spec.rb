require 'spec_helper'

feature "site content" do
  scenario "Getting the right content" do
    visit main_pages_home_path
    #page.should have_css?('title:contains("Welcome to blogBase!")')
    #page.has_content?('fake text')
    expect(page).to have_text("Welcome to blogBase!")
  end
end