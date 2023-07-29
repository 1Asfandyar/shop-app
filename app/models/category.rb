# frozen_string_literal: true

# Category model
class Category < ApplicationRecord
  has_many :subcategories, class_name: 'Category', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Category', optional: true

  has_and_belongs_to_many :products
  has_one_attached :cover_image

  validates :name, presence: true
  # validate :cover_image

  scope :only_root, -> { where parent: nil }

  def category_names
    category_path = []
    current_category = self
    while current_category
      category_path.unshift(current_category.name)
      current_category = current_category.parent
    end

    category_path
  end

  scope :categories_without_subcategories, -> { where.not(id: pluck(:parent_id)) }

  def acceptable_image
    return unless cover_image.attached?

    acceptable_types = ['image/jpeg', 'image/png']
    return if acceptable_types.include?(cover_image.content_type)

    errors.add(cover_image, 'must be a JPEG or PNG')
  end
end
