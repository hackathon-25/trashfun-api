# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    user_challenge { create(:user_challenge) }
  end
end
