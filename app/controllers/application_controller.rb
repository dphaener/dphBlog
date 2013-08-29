class ApplicationController < ActionController::Base
	helper_method :current_user
	helper_method :all_posts_months
	helper_method :get_post_title_by_month
	helper_method :nice_date
	helper_method :get_commenter
	helper_method :get_password

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	def all_posts_months
		@all_posts_months = Post.find( :all, :select => "updated_at").collect{|article| article.updated_at.strftime("%m-%Y")}.uniq
	end
	def get_post_title_by_month(month)
		@get_post_title_by_month = Post.find( :all, :conditions => ["to_char(updated_at,'MM-YYYY') = ?", month])
	end
	def nice_date(datestring)
		d = Date.parse(datestring).strftime("%B %Y")
		@nice_date = d
	end
	def get_commenter(user)
		@get_commenter = user.username
	  if @get_commenter.length == 0
			@get_commenter = user.email
		else
			@get_commenter = user.username
		end
	end
	def get_password(user)
		hash = user.password_hash
		@get_password = BCrypt::Password.create(hash)
  end
end
