# frozen_string_literal: true

class Api::RegistrationsController < Devise::RegistrationsController
  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    else
      super # Use the default one
    end
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
