require 'spec_helper'

describe "news_events/new" do
  before(:each) do
    assign(:news_event, stub_model(NewsEvent,
      :news_title => "MyString",
      :link => "MyString",
      :body => "MyText",
      :place => "MyString",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new news_event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_events_path, :method => "post" do
      assert_select "input#news_event_news_title", :name => "news_event[news_title]"
      assert_select "input#news_event_link", :name => "news_event[link]"
      assert_select "textarea#news_event_body", :name => "news_event[body]"
      assert_select "input#news_event_place", :name => "news_event[place]"
      assert_select "input#news_event_author", :name => "news_event[author]"
    end
  end
end
