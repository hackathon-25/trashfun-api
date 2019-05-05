# frozen_string_literal: true

FactoryBot.define do
  factory :user_challenge do
    user { create(:user) }
    challenge { create(:challenge) }
  end
end
