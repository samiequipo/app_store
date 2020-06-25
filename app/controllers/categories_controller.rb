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

     respond_to do |format|
      # format.js { render template: 'categories/create2.js.erb' }
      if @category.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @category.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end
  
  def edit
  end
  
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @category.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end
  
  def destroy
    @category.destroy
    respond_to do |format|
      format.json { respond :no_content }
      format.js 
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end  

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
