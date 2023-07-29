# frozen_string_literal: true

# ProductInquiry
class ProductInquiry < ApplicationRecord
  after_create :send_order_email
  belongs_to :product

  validates :email, presence: true
  validates :comments, presence: true

  def send_order_email
    OrderMailer.new_order(id).deliver_later
  end
end
