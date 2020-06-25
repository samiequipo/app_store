class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]
  
  def index
    @categories = Category.descendent
  end

  def new
    @category = Category.new
  end
  
  def create
    # byebug
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path  
  end
  
  def edit
  end
  
  def update
    @category.update(category_params)
    redirect_to categories_path  
  end
  
  def destroy
    @category.destroy
    redirect_to categories_path  
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end  

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
