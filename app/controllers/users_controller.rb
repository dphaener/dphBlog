class UsersController < ApplicationController
	def new
	  @user = User.new
	end
	
	def create
	  @user = User.new(user_params)
	  if @user.save
			user_log = User.authenticate(user_params[:email], user_params[:password])
			if user_log
				session[:user_id] = user_log.id
			end
	    redirect_to root_url, :notice => "Signed up!"
	  else
	    render "new"
	  end
	end
	
	private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
