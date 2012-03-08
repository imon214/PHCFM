require 'spec_helper'

describe "phcfms/index" do
  before(:each) do
    assign(:phcfms, [
      stub_model(Phcfm,
        :article => "MyText",
        :link => "Link",
        :title => "Title",
        :body => "MyText",
        :author => "Author",
        :article_comment => "MyText",
        :article_commentator => "Article Commentator",
        :commentator_email => "Commentator Email"
      ),
      stub_model(Phcfm,
        :article => "MyText",
        :link => "Link",
        :title => "Title",
        :body => "MyText",
        :author => "Author",
        :article_comment => "MyText",
        :article_commentator => "Article Commentator",
        :commentator_email => "Commentator Email"
      )
    ])
  end

  it "renders a list of phcfms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Article Commentator".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Commentator Email".to_s, :count => 2
  end
end
