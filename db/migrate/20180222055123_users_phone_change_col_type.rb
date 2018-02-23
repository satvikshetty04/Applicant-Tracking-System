class UsersPhoneChangeColType < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :phone_no, :string
  end
end
