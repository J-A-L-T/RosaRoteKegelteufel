require 'rails_helper'

describe Album do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:album)).to be_valid
  end
  it 'is invalid without a title' do
    expect(FactoryGirl.build(:album, title: nil)).to_not be_valid
  end
  it 'is invalid without a content' do
    expect(FactoryGirl.build(:album, description: nil)).to_not be_valid
  end
  it 'is invalid with to much characters for title' do
    expect(FactoryGirl.build(:album, title: Faker::Lorem.characters(51))).to_not be_valid
  end
  it 'is invalid with to much characters for content' do
    expect(FactoryGirl.build(:album, description: Faker::Lorem.characters(2001))).to_not be_valid
  end
end
