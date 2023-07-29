# frozen_string_literal: true

# OrderMailer
class OrderMailer < ApplicationMailer
  def new_order(inquiry_obj_id)
    @inquiry_obj = ProductInquiry.find_by(id: inquiry_obj_id)
    mail(subject: 'New Order')
  end
end
