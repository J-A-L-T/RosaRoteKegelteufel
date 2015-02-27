require 'faker'

FactoryGirl.define do
  factory :event do |e|
    e.title { Faker::Lorem.characters(10)}
    e.description { Faker::Lorem.characters(255)}
    e.start_time { Faker::Time.forward(365, :evening) }
    e.end_time { Faker::Time.between(start_time, Faker::Time.forward(367, :evening)) }
  end
end