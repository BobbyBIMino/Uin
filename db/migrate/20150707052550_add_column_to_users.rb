class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :school, :string
    add_column :users, :major, :string
    add_column :users, :quantity_of_users, :integer
  end
end
