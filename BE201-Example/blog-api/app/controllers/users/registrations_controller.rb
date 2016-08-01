class Users::RegistrationsController < ApplicationController
  skip_before_action :authenticate_by_token, only: [:create]

  def create
    user = User.new(user_params)

    if user.save
      # log the user in
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name)
    end
end
