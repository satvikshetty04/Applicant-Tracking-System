class AddjobAndApplicationStatus < ActiveRecord::Migration[5.1]
  def change
    add_column :applications, :application_status, :string, :default => "Submitted"
    add_column :jobs, :job_status, :string, :default => "Open"
  end
end
