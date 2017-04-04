class CreateReaders < ActiveRecord::Migration[5.0]
  def change
    create_table :readers do |t|
      t.string :code_card
      t.string :name
      t.date :birthday
      t.string :phone
      t.string :unit
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
