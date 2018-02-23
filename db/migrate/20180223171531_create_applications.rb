class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.string :current_company
      t.string :linkedin_url
      t.string :portfolio_url
      t.text :add_info
      t.string :gender
      t.string :race
      t.string :veteran
      t.string :disability
      t.string :resume

      t.timestamps
    end
  end
end
