# frozen_string_literal: true

# CreateUserRoles
class CreateUserRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_roles do |t|
      t.references :role, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
    add_index :user_roles, %i[user_id role_id], unique: true
  end
end
