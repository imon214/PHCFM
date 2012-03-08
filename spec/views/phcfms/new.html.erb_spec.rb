require 'spec_helper'

describe "phcfms/new" do
  before(:each) do
    assign(:phcfm, stub_model(Phcfm,
      :article => "MyText",
      :link => "MyString",
      :title => "MyString",
      :body => "MyText",
      :author => "MyString",
      :article_comment => "MyText",
      :article_commentator => "MyString",
      :commentator_email => "MyString"
    ).as_new_record)
  end

  it "renders new phcfm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phcfms_path, :method => "post" do
      assert_select "textarea#phcfm_article", :name => "phcfm[article]"
      assert_select "input#phcfm_link", :name => "phcfm[link]"
      assert_select "input#phcfm_title", :name => "phcfm[title]"
      assert_select "textarea#phcfm_body", :name => "phcfm[body]"
      assert_select "input#phcfm_author", :name => "phcfm[author]"
      assert_select "textarea#phcfm_article_comment", :name => "phcfm[article_comment]"
      assert_select "input#phcfm_article_commentator", :name => "phcfm[article_commentator]"
      assert_select "input#phcfm_commentator_email", :name => "phcfm[commentator_email]"
    end
  end
end
