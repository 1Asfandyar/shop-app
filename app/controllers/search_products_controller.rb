class SearchProductsController < ApplicationController
    def index
        @categories = Category.with_attached_cover_image.only_root
        @products = if params[:search]
            Product.where('name ILIKE ?', "%#{params[:search]}%").paginate(page: params[:page], per_page: 10)
          else
            Product.paginate(page: params[:page], per_page: 10)
          end
    end
    private

    def product_params
      params.require(:search).permit(:search)
    end
end
