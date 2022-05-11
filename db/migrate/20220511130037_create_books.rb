class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.boolean :fictitious
      t.integer :pages
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
