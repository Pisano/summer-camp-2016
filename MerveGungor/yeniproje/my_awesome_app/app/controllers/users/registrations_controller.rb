# app/controllers/users/registrations_controller.rb
class Users::RegistrationsController < ApplicationController
 skip_before_action :authenticate_by_token, only: [:create]
  # [...]

  def create
    user = User.new(user_params)

    if user.save
      # directly log the user in after registration
      user.generate_token!

      render json: user, status: :created  # token must be passed here
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
