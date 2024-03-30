class CreateResumesecs < ActiveRecord::Migration[7.1]
  def change
    create_table :resumesecs do |t|
      t.string :title
      t.text :description
      t.text :paragraphe1
      t.text :paragraphe2
      t.text :image

      t.timestamps
    end
  end
end
