class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_applicant, :boolean
    add_column :users, :is_recruiter, :boolean
  end
end
