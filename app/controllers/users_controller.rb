# frozen_string_literal: true

class UsersController < ActionController::API
  def index
    render json: User.all
  end
end
