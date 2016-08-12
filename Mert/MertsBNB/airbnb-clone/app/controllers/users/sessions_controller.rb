# class Users::SessionsController < ApplicationController
#   def create
#     user = User.find_by(email: params[:user][:email])

#     if user && user.authenticate(params[:user][:password])
#       # Generate Token and render it

#       render json: user
#     else
#       render json: {}, status: :unprocessable_entity
#     end
#   end

#   def destroy
#     # Delete Token
#   end
# end
