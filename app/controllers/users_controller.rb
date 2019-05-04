# frozen_string_literal: true

class UsersController < ActionController::API
  # before_action :authenticate_user!

  def index
    render json: User.all
  end
end
