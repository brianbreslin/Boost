class UsersController < ApplicationController
  def update
  	if current_user.update_attributes(user_params)
  		flash[:notice] = "You have succcessfully updated your information."
  		redirect_to edit_user_registration_path(current_user)
  	else
  		render "devise/registrations/edit"
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:name)
  end
end
