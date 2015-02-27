require 'rails_helper'

describe Topic do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:topic)).to be_valid
  end
  it 'is invalid without a title' do
    expect(FactoryGirl.build(:topic, title: nil)).to_not be_valid
  end
  it 'is invalid without a content' do
    expect(FactoryGirl.build(:topic, content: nil)).to_not be_valid
  end
  it 'is invalid with to much characters for title' do
    expect(FactoryGirl.build(:topic, title: Faker::Lorem.characters(51))).to_not be_valid
  end
  it 'is invalid with to much characters for content' do
    expect(FactoryGirl.build(:topic, content: Faker::Lorem.characters(2001))).to_not be_valid
  end
end