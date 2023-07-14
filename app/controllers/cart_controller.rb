# frozen_string_literal: true

# CartController
class CartController < ApplicationController
  def create_cookie
    @product = Product.find_by(cart_params)
    cookies[:cart_id] = @product.code
  end

  def index; end

  private

  def cart_params
    params.permit(:id)
  end
end
