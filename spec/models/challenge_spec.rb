# frozen_string_literal: true

require "rails_helper"

RSpec.describe Challenge, type: :model do
  context "associations" do
    it { is_expected.to have_many(:user_challenges) }
  end
end
