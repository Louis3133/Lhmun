class CreateResumes < ActiveRecord::Migration[7.1]
  def change
    create_table :resumes do |t|
      t.string :title
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
