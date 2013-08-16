class ApplicationController < ActionController::Base
	helper_method :current_user
	helper_method :all_posts_months
	helper_method :get_post_title_by_month
	helper_method :nice_date

	private

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	def all_posts_months
		@all_posts_months = Post.find( :all, :select => "updated_at").collect{|article| article.updated_at.strftime("%m-%Y")}.uniq
	end
	def get_post_title_by_month(month)
		@get_post_title_by_month = Post.find( :all, :conditions => ["strftime('%m-%Y', updated_at) = ?", month])
	end
	def nice_date(datestring)
		d = Date.parse(datestring).strftime("%B %Y")
		@nice_date = d
	end
end
