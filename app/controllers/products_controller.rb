# frozen_string_literal: true

# products controller
class ProductsController < ApplicationController
  def index; end

  def show
    @product_inquiry = ProductInquiry.new
  end
end
