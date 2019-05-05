# frozen_string_literal: true

class Challenge < ApplicationRecord
  has_many :user_challenges, dependent: :destroy
end
