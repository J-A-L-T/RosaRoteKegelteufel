require 'rails_helper'

describe Event do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:event)).to be_valid
  end
  it 'is invalid without a title' do
    expect(FactoryGirl.build(:event, title: nil)).to_not be_valid
  end
  it 'is invalid without a description' do
    expect(FactoryGirl.build(:event, description: nil)).to_not be_valid
  end
  it 'is invalid without a start_time and a end_time' do
    expect(FactoryGirl.build(:event, start_time: nil, end_time: nil)).to_not be_valid
  end
end