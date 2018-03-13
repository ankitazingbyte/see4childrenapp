class Api::V1::RegistrationsController < Api::V1::ApiController

  skip_before_action :authenticate_user! #, :only => [:set_status]

  def create
    user_params = params.require(:email)
    user_params = params.require(:username)
    user_params = params.require(:password)
    user_params = params.permit(:email,:password,:username)
    @user = User.new(user_params)
    begin
      @user.save!
      if @user.persisted?
        render json: {status: true, message: "Sign Up successful!", user: @user}  
      else
        render json: {status: false, message: @user.errors.full_messages.first}, :status=>200
      end
    rescue => e
      render json: {status: false, message: e.message}, :status=>200
    end
  end

end
