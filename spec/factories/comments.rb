require 'faker'

FactoryGirl.define do
  factory :comment do |c|
    c.user { FactoryGirl.create(:user) }
    c.topic { FactoryGirl.create(:topic) }
    c.body { Faker::Lorem.characters(255)}
  end
end