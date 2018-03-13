class Api::V1::ApiController < Api::V1::ApplicationController
	before_action :authenticate_user!, unless: :devise_controller?

	private

  def authenticate_user!
    user = User.where(user_token)
    if user.nil?
      render json: { error: "Invaid Token"}
    else
      @current_user = user
    end
  end

  def user_token
    request.headers['X-AUTH-TOKEN'].presence || params['token'].presence
  end

end