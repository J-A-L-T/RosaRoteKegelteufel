require 'rails_helper'

describe Comment do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:comment)).to be_valid
  end
  it 'is invalid without a body' do
    expect(FactoryGirl.build(:comment, body: nil)).to_not be_valid
  end
  it 'is invalid with to much characters' do
    expect(FactoryGirl.build(:comment, body: Faker::Lorem.characters(501))).to_not be_valid
  end
end