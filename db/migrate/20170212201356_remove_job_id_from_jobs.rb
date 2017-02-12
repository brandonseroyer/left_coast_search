class RemoveJobIdFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :job_id
    add_column :jobs, :job_id, :integer
  end
end
