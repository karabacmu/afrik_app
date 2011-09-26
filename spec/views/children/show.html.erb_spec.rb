require 'spec_helper'

describe "children/show.html.erb" do
  before(:each) do
    @child = assign(:child, stub_model(Child,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Missing City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Missing State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Missing Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hair Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Eye Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Police Case No/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Circumstances/)
  end
end
