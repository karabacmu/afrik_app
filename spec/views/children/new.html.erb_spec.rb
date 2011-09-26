require 'spec_helper'

describe "children/new.html.erb" do
  before(:each) do
    assign(:child, stub_model(Child,
      :name => "MyString",
      :missing_city => "MyString",
      :missing_state => "MyString",
      :missing_country => "MyString",
      :sex => "MyString",
      :height => 1,
      :hair_color => "MyString",
      :eye_color => "MyString",
      :police_case_no => "MyString",
      :circumstances => "MyString"
    ).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path, :method => "post" do
      assert_select "input#child_name", :name => "child[name]"
      assert_select "input#child_missing_city", :name => "child[missing_city]"
      assert_select "input#child_missing_state", :name => "child[missing_state]"
      assert_select "input#child_missing_country", :name => "child[missing_country]"
      assert_select "input#child_sex", :name => "child[sex]"
      assert_select "input#child_height", :name => "child[height]"
      assert_select "input#child_hair_color", :name => "child[hair_color]"
      assert_select "input#child_eye_color", :name => "child[eye_color]"
      assert_select "input#child_police_case_no", :name => "child[police_case_no]"
      assert_select "input#child_circumstances", :name => "child[circumstances]"
    end
  end
end
