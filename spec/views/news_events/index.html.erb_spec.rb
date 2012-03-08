require 'spec_helper'

describe "news_events/index" do
  before(:each) do
    assign(:news_events, [
      stub_model(NewsEvent,
        :news_title => "News Title",
        :link => "Link",
        :body => "MyText",
        :place => "Place",
        :author => "Author"
      ),
      stub_model(NewsEvent,
        :news_title => "News Title",
        :link => "Link",
        :body => "MyText",
        :place => "Place",
        :author => "Author"
      )
    ])
  end

  it "renders a list of news_events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "News Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
