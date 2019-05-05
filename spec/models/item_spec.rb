# frozen_string_literal: true

require "rails_helper"

RSpec.describe Item, type: :model do
  context "associations" do
    it { is_expected.to belong_to(:user_challenge) }
  end
end
