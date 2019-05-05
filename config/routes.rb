# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"

  namespace :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }

    resources :challenges, only: [:index] do
      collection do
        post :enroll
      end

      member do
        get :enrolled
      end
    end
  end
end
