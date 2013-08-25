require 'spec_helper'

describe "blogs/edit" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :title => "MyString",
      :body => "MyText",
      :draft => false,
      :user_id => 1,
      :visitors => 1
    ))
  end

  it "renders the edit blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do
      assert_select "input#blog_title[name=?]", "blog[title]"
      assert_select "textarea#blog_body[name=?]", "blog[body]"
      assert_select "input#blog_draft[name=?]", "blog[draft]"
      assert_select "input#blog_user_id[name=?]", "blog[user_id]"
      assert_select "input#blog_visitors[name=?]", "blog[visitors]"
    end
  end
end
