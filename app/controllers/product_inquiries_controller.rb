class ProductInquiriesController < ApplicationController
  before_action :set_product_inquiry, only: %i[ show edit update destroy ]

  # GET /product_inquiries or /product_inquiries.json
  def index
    @product_inquiries = ProductInquiry.all
  end

  # GET /product_inquiries/1 or /product_inquiries/1.json
  def show
  end

  # GET /product_inquiries/new
  def new
    @product_inquiry = ProductInquiry.new
  end

  # GET /product_inquiries/1/edit
  def edit
  end

  # POST /product_inquiries or /product_inquiries.json
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

  # PATCH/PUT /product_inquiries/1 or /product_inquiries/1.json
  def update
    respond_to do |format|
      if @product_inquiry.update(product_inquiry_params)
        format.html { redirect_to product_inquiry_url(@product_inquiry), notice: "Product inquiry was successfully updated." }
        format.json { render :show, status: :ok, location: @product_inquiry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_inquiries/1 or /product_inquiries/1.json
  def destroy
    @product_inquiry.destroy

    respond_to do |format|
      format.html { redirect_to product_inquiries_url, notice: "Product inquiry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_inquiry
      @product_inquiry = ProductInquiry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_inquiry_params
      params.require(:product_inquiry).permit(:product_id, :email, :comments)
    end
end
