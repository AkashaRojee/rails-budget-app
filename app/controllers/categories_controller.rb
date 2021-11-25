class CategoriesController < ApplicationController

  before_action :set_category, only: %i[show]

  def index
    @categories = current_user.categories
  end

  def show
    @purchases = @category.purchases.order(created_at: 'desc')
  end

  private

  def set_category
    @category = Category.includes(:purchases).find(params[:id])
  end
end
