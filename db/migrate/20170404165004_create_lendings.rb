class CreateLendings < ActiveRecord::Migration[5.0]
  def change
    create_table :lendings do |t|
      t.references :book, foreign_key: true
      t.references :reader, foreign_key: true
      t.date :borrow_date
      t.date :appointment_date
      t.date :pay_date
      t.text :description

      t.timestamps
    end
  end
end
