# frozen_string_literal: true

FactoryBot.define do
  factory :challenge do
    name { Faker::Lorem.word }
  end
end
