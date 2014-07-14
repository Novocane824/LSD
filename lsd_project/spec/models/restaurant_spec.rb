require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  it "is invalid without a name" do
    c = Contact.new
    c.email = "bob@gmail.com"
    c.content = "Hello"
    c.save

    expect(c).to be_invalid
  end

  it "is invalid without an email" do
    c = Contact.new
    c.name = "Harry"
    c.content = "Hello"
    c.save

    expect(c).to be_invalid
  end
  it "is invalid without content" do
    c = Contact.new
    c.email = "bob@gmail.com"
    c.name = "Hello"
    c.save

    expect(c).to be_invalid
  end
  it "is valid with 3 fields" do
    c = Contact.new
    c.email = "bob@gmail.com"
    c.content = "Hello"
    c.name = "harry"
    c.save

    expect(c).to be_valid
  end
end