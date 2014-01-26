require 'faker'
FactoryGirl.define do
  factory :trip do
    name {Faker::Name.first_name}
    city {Faker::Address.city}
    latitude 54.00000
    longitute 13.00000
    active true
    seo {Faker::Lorem.characters}
    description {Faker::Lorem.characters}
  end
end
