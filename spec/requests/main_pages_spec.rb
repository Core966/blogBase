require 'spec_helper'

describe "MainPages" do
  describe "GET /main_pages_home" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_pages_home_path
      response.status.should be(200)
    end
    

  end
describe "GET /main_pages_blogs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_pages_blogs_path
      response.status.should be(200)
    end
  end
describe "GET /main_pages_about" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_pages_about_path
      response.status.should be(200)
    end
  end
end
