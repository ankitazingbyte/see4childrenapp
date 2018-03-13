class UsersController < BaseController
	def show
	   @user = User.find(params[:id])
	    @user_profile = @user.profile
	end

	def edit_profile
	    @user = current_user
	end

	def update_profile
	    @user = User.find(current_user.id)
	    if @user.update(user_params)
	      redirect_to root_path
	    else
	      render "edit"
	    end
	end

  	private

	  def user_params
	    params.required(:user).permit(:email,:password, :superadmin_role, :admin_role, :user_role, :name, :no_of_children, :no_of_staff, :state, :established, :city, :area, :zip_code, :direcor, :image)
	  end
end