class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
<<<<<<< HEAD
  skip_before_action :authenticate_by_token, only: [:create]
=======
>>>>>>> 9a4bfa75de63aa2cf6ce3e1e4277bd8edb1e198b

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

<<<<<<< HEAD

  def login
    user = User.find_by(email: params[:user][:password])
    if user && user.authenticate(params[:user][:password])
      #generate token
      user.generate_token!

      render json: user
    else
      render json: {},status: :unprocessable_entity
    end

  end

  def logout
    #destroy token
    @current_user.update(token: nil)

    render json: @current_user
  end





=======
>>>>>>> 9a4bfa75de63aa2cf6ce3e1e4277bd8edb1e198b
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.fetch(:user, {})
    end
end
