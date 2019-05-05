# frozen_string_literal: true

FactoryBot.define do
  factory :user_challenge_weight do
    item_group { create(:item_group) }
    user_challenge { create(:user_challenge) }
  end
end
