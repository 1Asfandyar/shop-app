class RemoveCodeFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :code, :string
  end
end
