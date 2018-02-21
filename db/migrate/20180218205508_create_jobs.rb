class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.text :job_description
      t.string :employment_type
      t.text :responsibilities
      t.text :requirements

      t.timestamps
    end
  end
end
