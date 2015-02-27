require 'rails_helper'

describe Image do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:image)).to be_valid
  end
  it 'is invalid without a title' do
    expect(FactoryGirl.build(:image, title: nil)).to_not be_valid
  end
  it 'is invalid with to much characters in title' do
    expect(FactoryGirl.build(:image, title: Faker::Lorem.characters(51))).to_not be_valid
  end
end