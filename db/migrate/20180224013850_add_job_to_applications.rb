class AddJobToApplications < ActiveRecord::Migration[5.1]
  def change
    add_reference :applications, :jobs, index: true
    add_foreign_key :applications, :jobs
  end
end
