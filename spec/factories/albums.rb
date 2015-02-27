require 'faker'

FactoryGirl.define do
  factory :album do |a|
    a.title { Faker::Lorem.characters(10)}
    a.description { Faker::Lorem.characters(255)}
  end
end
