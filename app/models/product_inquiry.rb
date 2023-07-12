# frozen_string_literal: true

class ProductInquiry < ApplicationRecord
  belongs_to :product

  validates :email, presence: true
  validates :comments, presence: true
end
