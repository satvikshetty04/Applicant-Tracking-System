class AddAdditionalFieldsUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :is_admin, :boolean
    add_column :users, :phone_no, :integer
  end
end
