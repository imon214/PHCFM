require 'spec_helper'

describe "articles/show" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :article_title => "Article Title",
      :link => "Link",
      :body => "MyText",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Article Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
  end
end
