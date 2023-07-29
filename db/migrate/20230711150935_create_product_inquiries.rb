# frozen_string_literal: true

# CreateProductInquiries
class CreateProductInquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :product_inquiries do |t|
      t.references :product, null: false, foreign_key: true
      t.string :email
      t.text :comments
      t.timestamps
    end
  end
end
