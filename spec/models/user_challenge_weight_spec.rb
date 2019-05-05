# frozen_string_literal: true

require "rails_helper"

RSpec.describe UserChallengeWeight, type: :model do
  context "associations" do
    it { is_expected.to belong_to(:item_group) }
    it { is_expected.to belong_to(:user_challenge) }
  end
end
