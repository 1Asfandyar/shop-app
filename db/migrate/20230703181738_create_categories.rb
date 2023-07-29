# frozen_string_literal: true

# CreateCategories
class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ''
      t.integer :parent_id

      t.timestamps
    end
    add_index :categories, :name
    add_index :categories, :parent_id
    add_index :categories, %i[name parent_id], unique: true
  end
end
