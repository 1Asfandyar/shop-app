# frozen_string_literal: true

# Role
class Role < ApplicationRecord
  has_many :user_roles
  has_many :users, through: :user_roles

  ADMIN = 'admin'
  OTHER = 'other'

  validates :name, uniqueness: true

  def admin?
    name == ADMIN
  end
end
