class AddDocumentToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :document_file_name, :string
    add_column :contacts, :document_content_type, :string
    add_column :contacts, :document_updated_at, :datetime
    add_column :contacts, :document_file_size, :integer
  end
end
