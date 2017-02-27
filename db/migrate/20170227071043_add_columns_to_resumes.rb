class AddColumnsToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :first_name, :string
    add_column :resumes, :last_name, :string
    add_column :resumes, :phone, :string
    add_column :resumes, :email, :string
    add_column :resumes, :address, :string
    add_column :resumes, :city, :string
    add_column :resumes, :state, :string
    add_column :resumes, :zip, :string
    add_column :resumes, :about, :string
    add_column :resumes, :document_file_name, :string
    add_column :resumes, :document_content_type, :string
    add_column :resumes, :document_updated_at, :datetime
    add_column :resumes, :document_file_size, :integer
  end
end
