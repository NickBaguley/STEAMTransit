class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.float :balance
      t.float :total_sent
      t.float :total_received

      t.timestamps null: false
    end
  end
end
