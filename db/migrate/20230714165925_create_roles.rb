# frozen_string_literal: true

# CreateRoles
class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name, null: false, default: 'other'
      t.timestamps
    end

    add_index :roles, :name, unique: true
  end
end
