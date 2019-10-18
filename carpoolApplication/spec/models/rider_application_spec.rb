require 'rails_helper'

RSpec.describe RiderApplication, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.Name = "Anything"
    subject.Phone = 9728348992
    subject.street_address = "100 University Dr"
    subject.city = "College Station"
    subject.zip_code = 77840
    subject.number_passengers = 3
    expect(subject).to be_valid
  end

  it "is not valid without a Name" do
    subject.Name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a Phone" do
    subject.Phone = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a Street Address" do
    subject.street_address = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a Zip Code" do
    subject.zip_code = nil
    expect(subject).to_not be_valid
  end

  it "is not valid zip code outside of BCS" do
    subject.zip_code = 75013
    expect(subject).to_not be_valid
  end

  it "is not valid without city" do
    subject.city = nil
    expect(subject).to_not be_valid
  end

  it "is not valid city outside of bryan college station" do
    subject.city = "Dallas"
    expect(subject).to_not be_valid
  end

  it "is not valid without a Number of Passengers" do
    subject.number_passengers = nil
    expect(subject).to_not be_valid
  end

end
