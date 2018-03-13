class Api::V1::UsersController < Api::V1::ApiController	
	before_action :validate_email_update, only: :update
	def update
	    if current_user.update_new_email!(@new_email)
	      # SEND EMAIL HERE
	      render json: { status: 'Email Confirmation has been sent to your new Email.' }, status: :ok
	    else
	      render json: { errors: current_user.errors.values.flatten.compact }, status: :bad_request
	    end
	end

	def email_update
	  token = params[:token].to_s
	  user = User.find_by(confirmation_token: token)

	  if !user || !user.confirmation_token_valid?
	    render json: {error: 'The email link seems to be invalid / expired. Try requesting for a new one.'}, status: :not_found
	  else
	    user.update_new_email!
	    render json: {status: 'Email updated successfully'}, status: :ok
	  end
	end

	private

    def validate_email_update
      @new_email = params[:email].to_s.downcase

      	if @new_email.blank?
        	return render json: { status: 'Email cannot be blank' }, status: :bad_request
      	end

      	if  @new_email == current_user.email
        	return render json: { status: 'Current Email and New email cannot be the same' }, status: :bad_request
      	end

	    if User.email_used?(@new_email)
	        return render json: { error: 'Email is already in use.'] }, status: :unprocessable_entity
	    end
    end
end