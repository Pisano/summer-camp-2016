# app/controllers/users/sessions_controller.rb
class Users::SessionsController < ApplicationController
   skip_before_action :authenticate_by_token, only: [:create]
  def create
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      #user.generate_token!

      render json: user, status: :created # token must be passed here
    else
      user ||= User.new(email: params[:user][:email])

      render json: user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @current_user.update(token: nil)

    render json: @current_user

  end
end
