# frozen_string_literal: true

require "rails_helper"

RSpec.describe ItemGroup, type: :model do
  context "associations" do
    it { is_expected.to have_many(:user_challenge_weights) }
  end
end
