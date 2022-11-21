class CreateDevs < ActiveRecord::Migration[7.0]
  def change
    create_table :devs do |t|
      t.string :name
      t.string :github_link
      t.text :description
      t.integer :price
      t.string :skills

      t.timestamps
    end
  end
end
