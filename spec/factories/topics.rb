require 'faker'

FactoryGirl.define do
  factory :topic do |t|
    t.user { FactoryGirl.create(:user) }
    t.tag { Tag.create name: 'Important'}
    t.title { Faker::Lorem.characters(10)}
    t.content { Faker::Lorem.characters(255)}
  end
end