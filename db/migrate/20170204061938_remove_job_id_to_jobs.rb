class RemoveJobIdToJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :job_id
    add_column :jobs, :job_id, :string
  end
end
