require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do
    @attr = { :last_name => "Last Name",:first_name => "First Name", :email => "user@example.com" }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    no_name_user = User.new(@attr.merge(:last_name => "",:first_name => ""))
    no_name_user.should_not_be_valid
  end
  it "should require an email address" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not_be_valid
  end
  it "should require an phone no." do
    no_phone_user = User.new(@attr.merge(:phone_no => ""))
    no_phone_user.should_not_be_valid
  end
  it "should accept valid email addresses" do
    addresses = %w[user@xyz.com THE_USER@xyz.abc.org first.last@xyz.ke]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should_be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@xyz,com user_at_xyz.org example.user@xyz.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not_be_valid
    end
  end
end
