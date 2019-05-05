# frozen_string_literal: true

class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  has_many :items, dependent: :destroy
  has_many :user_challenge_weights, dependent: :destroy
end
