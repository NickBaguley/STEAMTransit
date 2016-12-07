class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :receiver_id
      t.text :details
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
