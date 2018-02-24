class AddCompanyIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :companies, index: true
    add_foreign_key :users, :companies
  end
end
