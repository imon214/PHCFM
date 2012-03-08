require 'spec_helper'

describe "articles/new" do
  before(:each) do
    assign(:article, stub_model(Article,
      :article_title => "MyString",
      :link => "MyString",
      :body => "MyText",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "input#article_article_title", :name => "article[article_title]"
      assert_select "input#article_link", :name => "article[link]"
      assert_select "textarea#article_body", :name => "article[body]"
      assert_select "input#article_author", :name => "article[author]"
    end
  end
end
