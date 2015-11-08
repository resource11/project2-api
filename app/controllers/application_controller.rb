#
class ApplicationController < ActionController::API
  # Defaults for API requests
  # this method authenticate will run before any other
  # action runs (c r u d)
  # checks for token, must return true if
  # you want any of your crud actions to happen
  before_action :api_request_settings
  def api_request_settings
    request.format = :json
  end

  # Use Token Authentication
  # this gets the token out of the headers
  # and finds the user by that token
  # if it's your token, you're the current user
  # of the api
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate
  def authenticate
    @current_user = authenticate_or_request_with_http_token do |token, _opts|
      User.find_by token: token
    end
  end
  # Controllers can use this to authorize actions
  attr_reader :current_user

  # Require SSL for deployed applications
  force_ssl if: :ssl_configured?
  def ssl_configured?
    !Rails.env.development?
  end

  # Use enhanced JSON serialization
  # make it easier to geenerate JSON
  include ActionController::Serialization

  # return 404 for failed search by id
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  def record_not_found
    render json: { message: 'Not Found' }, status: :not_found
  end

  # Restrict visibility of these methods
  private :authenticate, :current_user, :record_not_found
  private :ssl_configured?, :api_request_settings
end
