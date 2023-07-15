class CartController < ApplicationController
    require 'cgi'
    before_action :find_product, only: [:create_cookie, :remove_item]
    
    def create_cookie
        existing_values = ["#{cookies[:cart_id]}"]
        @product = Product.find_by(cart_params) 
        unless CGI.unescape(existing_values[0]).include?("#{@product.code}")
            cookie_value = existing_values + ["#{@product.code}"]
            cookies[:cart_id] = cookie_value
        end
    end

    def cart_items
        return @cart_product = nil if cookies[:cart_id].nil?
        @cart_products = Product.where(code: cookies[:cart_id].split("&"))
    end

    def remove_item
        existing_values = ["#{cookies[:cart_id]}"]
        if CGI.unescape(existing_values[0]).include?("#{@product.code}")
            cookie_value = existing_values[0].split("&").reject { |item| item == "#{@product.code}" }
            cookies[:cart_id] = cookie_value
        end
    end

    private

    def find_product
        @product = Product.find_by(cart_params)
    end

    def cart_params
        params.permit(:id)
    end
end
