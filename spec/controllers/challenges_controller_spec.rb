# frozen_string_literal: true

require "rails_helper"

RSpec.describe Api::ChallengesController, type: :controller do
  describe "#enroll" do
    let(:params) do
      {
        user_id: FactoryBot.create(:user).id,
        challenge_id: FactoryBot.create(:challenge).id
      }
    end

    before { post :enroll, params: params }

    it "returns added record", :aggregate_failures do
      expect(JSON.parse(response.body)["user_id"]).to eq(params[:user_id])
      expect(JSON.parse(response.body)["challenge_id"]).to eq(params[:challenge_id])
    end
  end

  describe "#enrolled" do
    before do
      FactoryBot.create_list(:user_challenge, 15, user: user, challenge: challenge)
      FactoryBot.create_list(:user_challenge, 5, user: another_user, challenge: challenge)

      get :enrolled, params: params
    end

    let(:another_user) { FactoryBot.create(:user) }
    let(:challenge) { FactoryBot.create(:challenge) }
    let(:user) { FactoryBot.create(:user) }
    let(:params) do
      {
        id: user.id
      }
    end

    it "returns all the challenges" do
      expect(JSON.parse(response.body).count).to be 15
    end
  end

  describe "#index" do
    before do
      FactoryBot.create(:challenge)

      get :index
    end

    it "returns all the challenges" do
      expect(JSON.parse(response.body).count).to be 1
    end
  end
end
