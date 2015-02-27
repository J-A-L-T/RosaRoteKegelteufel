require 'faker'

FactoryGirl.define do
  factory :image do |i|
    i.album { FactoryGirl.create(:album) }
    i.file { Faker::Avatar.image("my-own-slug", "50x50", "jpg") }
    i.title { Faker::Lorem.characters(10)}
  end
end
