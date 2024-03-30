class AddFieldsToResumes < ActiveRecord::Migration[7.1]
  def change
    add_column :resumes, :paragraphe1, :text
    add_column :resumes, :paragraphe2, :text
    add_column :resumes, :soustitre, :string
  end
end
