# frozen_string_literal: true

# CategoriesController
class CategoriesController < ApplicationController
  before_action :set_category

  def show
    @category = set_category
  end

  private

  def set_category
    puts category_params
    Category.find_by(category_params)
  end

  def category_params
    params.permit(:id)
  end
end
