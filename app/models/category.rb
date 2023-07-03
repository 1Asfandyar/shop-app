# frozen_string_literal: true

# Category model
class Category < ApplicationRecord
  has_many :subcategories, class_name: 'Category', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Category', optional: true

  has_and_belongs_to_many :products
  has_one_attached :cover_image

  validates :name, presence: true
end
