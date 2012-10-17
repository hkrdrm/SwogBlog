require 'spec_helper'

describe "blogs/show" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :title => "Title",
      :content => "Content",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
