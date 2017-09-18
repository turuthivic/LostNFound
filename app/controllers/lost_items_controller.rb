class LostItemsController < ApplicationController
  before_action :set_item, :set_category, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @items = LostItem.all
  end


  def show
    @item = LostItem.where(@category_id)
    @category = Category.where(@category_id)
  end

 
  def new
    @item = LostItem.new
    @category = Category.all.collect { |c| [c.name, c.id]}
  end

 
  def edit
    @category = Category.all.collect { |c| [c.name, c.id]}
  end

  def create

    @item = LostItem.new(item_params)
    @item.user = current_user
    @item.category_id = params[:category_id]
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'LostItem was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'LostItem was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to lost_items_url, notice: 'LostItem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_item
      @item = LostItem.find(params[:id])
    end

    def item_params
      params.require(:lost_item).permit(:title, :description, :category_id, :price, :image)
    end

    def set_category
      @categories = Category.where(@category_id)
    end
    
end
