class AddDocumentToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :document_file_name, :string
    add_column :applicants, :document_content_type, :string
    add_column :applicants, :document_updated_at, :datetime
    add_column :applicants, :document_file_size, :integer
  end
end
