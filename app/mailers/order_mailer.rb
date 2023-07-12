# frozen_string_literal: true

# OrderMailer
class OrderMailer < ApplicationMailer
  def new_order
    mail(subject: 'New Order')
  end
end
