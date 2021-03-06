require 'spec_helper'

describe "blogs/show" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :title => "Title",
      :body => "MyText",
      :draft => false,
      :user_id => 1,
      :visitors => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
