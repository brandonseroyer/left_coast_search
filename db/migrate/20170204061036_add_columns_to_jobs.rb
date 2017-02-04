class AddColumnsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :title, :string
    add_column :jobs, :job_id, :integer
    add_column :jobs, :description, :string
    add_column :jobs, :location, :string
    add_column :jobs, :type, :string
    add_column :jobs, :date, :datetime
  end
end
