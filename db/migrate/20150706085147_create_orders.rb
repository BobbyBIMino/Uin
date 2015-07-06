class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :order_files_name
      t.float :price
      t.string :order_state

      t.timestamps null: false
    end
  end
end
