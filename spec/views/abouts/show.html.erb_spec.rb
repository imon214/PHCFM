require 'spec_helper'

describe "abouts/show" do
  before(:each) do
    @about = assign(:about, stub_model(About,
      :title => "Title",
      :body => "MyText",
      :link => "Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
  end
end
