# frozen_string_literal: true

# dashboard controller
class HomeController < ApplicationController
  def index
    @categories = Category.with_attached_cover_image.only_root
  end
end
