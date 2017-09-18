class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:about, :home, :contact]
	def about
	end

	def home
	end

	def contact
	end
end