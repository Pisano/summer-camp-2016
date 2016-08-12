# class Users::RegistrationsController < ApplicationController
#   def create
#     user= User.new(user_params)

#     if user.save
#       render json: user, status: created


#     end
#   else
#     render json: user.errors, status: :unprocessable_entity

#   end

#   def update

#   end


#   private user_params
#     params.require(:user).permit(:first_name,:last_name,:email,:password,:password_confirmation)
#   end



# end
