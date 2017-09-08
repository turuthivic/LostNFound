class PagesController < ApplicationController
	skip_before_action :authenticate_user!
	def about
	end

	def home
	end

	def contact
	end
end