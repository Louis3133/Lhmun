class CreateConferences < ActiveRecord::Migration[7.1]
  def change
    create_table :conferences do |t|
      t.datetime :date
      t.text :link
      t.string :locate

      t.timestamps
    end
  end
end
