# frozen_string_literal: true

# product order
class ProductInquiriesController < ApplicationController
  def create
    @product = Product.find_by(id: product_inquiry_params[:product_id])
    @product_inquiry = ProductInquiry.new(product_inquiry_params.merge(product_id: @product.id))

    respond_to do |format|
      if @product_inquiry.save
        format.html do
          redirect_to root_path
        end
      else
        format.html { render 'products/show', status: :unprocessable_entity }
      end
    end
  end

  private

  def product_inquiry_params
    params.require(:product_inquiry).permit(:product_id, :email, :comments)
  end
end
