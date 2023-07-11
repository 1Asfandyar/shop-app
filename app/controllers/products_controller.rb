# frozen_string_literal: true

# products controller
class ProductsController < ApplicationController
  def index
    @products = Product.with_category(params[:category_id]).with_attached_images
  end

  def show
    @product = Product.with_attached_images.find_by product_params
  end

  private

  def product_params
    params.permit(:id)
  end
end
