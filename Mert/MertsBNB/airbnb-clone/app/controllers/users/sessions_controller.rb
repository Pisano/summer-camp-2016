<<<<<<< HEAD
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
=======
class Users::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      # Generate Token and render it

      render json: user
    else
      render json: {}, status: :unprocessable_entity
    end
  end

  def destroy
    # Delete Token
  end
end
>>>>>>> 9a4bfa75de63aa2cf6ce3e1e4277bd8edb1e198b
