class AddCategoryToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :category, :string
  end
end
