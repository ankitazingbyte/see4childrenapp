class Api::V1::SessionsController < Api::V1::ApiController
  
  skip_before_action :authenticate_user! #, :only => [:set_status]
  
  def create
    @user = User.authenticate(params[:email], params[:password])
    unless @user.present?
      render json: { errors:"Invalid Email or Password!",:success=>false }, status: 200
    end
      render json: { status: true, message: "Sign in successful!", user: @user}, status: 200 
  end

  def destroy
    user = User.find_by(auth_token: params[:auth_token])
    user.generate_auth_token
    user.save
    render json: user, status: 200
  end
end
