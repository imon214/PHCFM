require 'spec_helper'

describe "articles/index" do
  before(:each) do
    assign(:articles, [
      stub_model(Article,
        :article_title => "Article Title",
        :link => "Link",
        :body => "MyText",
        :author => "Author"
      ),
      stub_model(Article,
        :article_title => "Article Title",
        :link => "Link",
        :body => "MyText",
        :author => "Author"
      )
    ])
  end

  it "renders a list of articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Article Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
