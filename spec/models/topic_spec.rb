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
end