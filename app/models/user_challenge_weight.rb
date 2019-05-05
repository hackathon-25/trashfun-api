# frozen_string_literal: true

class UserChallengeWeight < ApplicationRecord
  belongs_to :item_group
  belongs_to :user_challenge
end
