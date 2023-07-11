class ProductInquiriesController < ApplicationController

  def create
    @product_inquiry = ProductInquiry.new(product_inquiry_params)

    respond_to do |format|
      if @product_inquiry.save
        format.html { redirect_to product_inquiry_url(@product_inquiry), notice: "Product inquiry was successfully created." }
        format.json { render :show, status: :created, location: @product_inquiry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def product_inquiry_params
      params.require(:product_inquiry).permit(:product_id, :email, :comments)
    end
end
