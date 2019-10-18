require 'rails_helper'

RSpec.describe RiderApplication, type: :model do
	subject { described_class.new }

  it "is valid with valid attributes" do 
  	subject.Name = "Anything"
  	expect(subject).to be_valid
  end

  it "is not valid without a Name" do
  	expect(subject).to_not be_valid
  end

  it "is not valid without a Phone"
  it "is not valid without a Street Address"
  it "is not valid without a Zip Code"
  it "is not valid without a Number of Passengers"
end
