class AddCompanyIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :company, index: true
    add_foreign_key :users, :company
  end
end
