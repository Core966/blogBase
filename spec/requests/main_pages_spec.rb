require 'spec_helper'

describe "MainPages" do
    
describe "GET /main_pages_home" do
    it "should have valid route and should render template given" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_pages_home_path
      response.status.should be(200)
      response.should render_template("layouts/application")
    end
  end
describe "GET /main_pages_blogs" do
    it "should have valid route and should render template given" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_pages_blogs_path
      response.status.should be(200)
      response.should render_template("layouts/application")
    end
  end
describe "GET /main_pages_about" do
    it "should have valid route and should render template given" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get main_pages_about_path
      response.status.should be(200)
      response.should render_template("layouts/application")
    end
  end
end
