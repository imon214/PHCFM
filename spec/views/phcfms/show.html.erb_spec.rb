require 'spec_helper'

describe "phcfms/show" do
  before(:each) do
    @phcfm = assign(:phcfm, stub_model(Phcfm,
      :article => "MyText",
      :link => "Link",
      :title => "Title",
      :body => "MyText",
      :author => "Author",
      :article_comment => "MyText",
      :article_commentator => "Article Commentator",
      :commentator_email => "Commentator Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Article Commentator/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Commentator Email/)
  end
end
