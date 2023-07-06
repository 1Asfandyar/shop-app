# frozen_string_literal: true

# products controller
class ProductsController < ApplicationController
  def index; end

  def show
    @product = Product.with_attached_images.find_by product_params
  end

  private

  def product_params
    params.permit(:id)
  end
end
