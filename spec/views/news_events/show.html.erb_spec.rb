require 'spec_helper'

describe "news_events/show" do
  before(:each) do
    @news_event = assign(:news_event, stub_model(NewsEvent,
      :news_title => "News Title",
      :link => "Link",
      :body => "MyText",
      :place => "Place",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/News Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Place/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
  end
end
