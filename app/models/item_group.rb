# frozen_string_literal: true

class ItemGroup < ApplicationRecord
  has_many :user_challenge_weights, dependent: :destroy
end
