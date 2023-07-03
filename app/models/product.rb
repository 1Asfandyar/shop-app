# frozen_string_literal: true

# Product Model
class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many_attached :images

  validates :name, uniqueness: true
  validates :code, uniqueness: true
end
