# frozen_string_literal: true

# CreateProducts
class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ''
      t.string :code, null: false, default: ''
      t.text :description, null: false, default: ''

      t.timestamps
    end
    add_index :products, :name, unique: true
    add_index :products, :code, unique: true
  end
end
