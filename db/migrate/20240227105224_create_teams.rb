class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :first_name
      t.string :role
      t.text :image
      t.text :link

      t.timestamps
    end
  end
end
