class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.boolean :living
      t.integer :pullitzer_prizes
      t.string :name

      t.timestamps
    end
  end
end
