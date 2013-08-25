require 'spec_helper'

describe Blog do
  context "when a blog is created it has to have a valid data" do
      before(:each) do
        @blog1 = Blog.new( :title => "Test", :body => "test", :user_id => 1)
        @blog2 = Blog.new( :title => "Test", :body => "test", :user_id => nil)
      end 

      it "validates the blog attributes" do
        @blog1.should be_valid
      end

      it "doesn't validates the blog attributes" do
        @blog2.should_not be_valid
      end
    end
end
