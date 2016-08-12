class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate_by_token

  private
   def authenticate_by_token
      authenticate_with_http_token do |token, options|
        @current_user = User.find_by(token: token)
      end

      @current_user ||= User.find_by(token: params[:token])

      unless @current_user
        self.headers['WWW-Authenticate'] = 'Token realm="Application"'
        render json: { error: "Bad credentials" }, status: :unauthorized
      end
    end

end
