class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_item
  before_action :set_category
  layout :layout_by_activeness

def after_sign_in_path_for(resource_or_scope)
  lost_items_path
end
  protected

  def set_item
  	@item = LostItem.where(@item_id)
  end

  def set_category
  	@category = Category.where(@category_id)
  end

private

def layout_by_activeness
  if devise_controller?
     'application'
  else
     'application'
  end
end
end
