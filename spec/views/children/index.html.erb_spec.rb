require 'spec_helper'

describe "children/index.html.erb" do
  before(:each) do
    assign(:children, [
      stub_model(Child,
        :name => "Name",
        :missing_city => "Missing City",
        :missing_state => "Missing State",
        :missing_country => "Missing Country",
        :sex => "Sex",
        :height => 1,
        :hair_color => "Hair Color",
        :eye_color => "Eye Color",
        :police_case_no => "Police Case No",
        :circumstances => "Circumstances"
      ),
      stub_model(Child,
        :name => "Name",
        :missing_city => "Missing City",
        :missing_state => "Missing State",
        :missing_country => "Missing Country",
        :sex => "Sex",
        :height => 1,
        :hair_color => "Hair Color",
        :eye_color => "Eye Color",
        :police_case_no => "Police Case No",
        :circumstances => "Circumstances"
      )
    ])
  end

  it "renders a list of children" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Missing City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Missing State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Missing Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hair Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Eye Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Police Case No".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Circumstances".to_s, :count => 2
  end
end
