class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.integer :id
      t.string :name
      t.string :website
      t.string :headquarters
      t.integer :size
      t.date :founded
      t.string :industry
      t.integer :revenue
      t.text :synopsis

      t.timestamps
    end
  end
end
