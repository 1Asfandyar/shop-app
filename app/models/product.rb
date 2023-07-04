# frozen_string_literal: true

# Product Model
class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many_attached :images

  validates :name, uniqueness: true
  validates :code, uniqueness: true
  # validate :validate_images

  def validate_images
    return errors.add :images, 'at least one attachment' if images.empty?

    acceptable_types = ['image/jpeg', 'image/png']

    images.each do |image|
      errors.add(images, 'must be a JPEG or PNG') unless acceptable_types.include?(image.content_type)
    end
  end
end
