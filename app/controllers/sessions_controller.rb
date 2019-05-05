# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  def create
    user = User.find_by(email: params[:user][:email])

    if user&.valid_password?(params[:user][:password])
      @current_user = user

      render json: {message: "authentication was successful"}
    else
      render json: {errors: {"email or password" => ["is invalid"]}}, status: :unprocessable_entity
    end
  end
end
