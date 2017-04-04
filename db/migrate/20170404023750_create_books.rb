class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :name
      t.string :author
      t.string :publisher
      t.integer :year_published
      t.text :description

      t.timestamps
    end
  end
end
