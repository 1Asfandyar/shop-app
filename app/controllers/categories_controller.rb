# frozen_string_literal: true

# CategoriesController
class CategoriesController < ApplicationController
  before_action :set_category

  def show
    @categories = Category.with_attached_cover_image.only_root
    @category = set_category
  end

  private

  def set_category
    category = Category.find_by(category_params)
    return category if category.subcategories.present?

    redirect_to category_products_path(category.id)
  end

  def category_params
    params.permit(:id)
  end
end
