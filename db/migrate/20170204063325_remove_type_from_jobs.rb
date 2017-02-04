class RemoveTypeFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :type
    add_column :jobs, :job_type, :string
  end
end
