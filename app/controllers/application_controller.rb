class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_item
  before_action :set_category

  protected

  def set_item
  	@item = LostItem.where(@item_id)
  end

  def set_category
  	@category = Category.where(@category_id)
  end
end
