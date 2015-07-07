class CreateFileInOrders < ActiveRecord::Migration
  def change
    create_table :file_in_orders do |t|
      t.string :name
      t.string :order_id
      t.string :type
      t.integer :page

      t.timestamps null: false
    end
  end
end
