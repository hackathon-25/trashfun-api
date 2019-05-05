# frozen_string_literal: true

class Api::ChallengesController < ActionController::API
  def enroll
    enrolled_challenge = UserChallenge.create(user_id: params[:user_id], challenge_id: params[:challenge_id])

    render json: enrolled_challenge
  end

  def enrolled
    enrolled_challenges = UserChallenge.where(user_id: params[:id])

    render json: enrolled_challenges
  end

  def index
    challenges = Challenge.all

    render json: challenges
  end
end
