class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :headquarters
      t.string :size
      t.string :industry
    end
  end
end
