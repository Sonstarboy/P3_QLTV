json.extract! lending, :id, :book_id, :reader_id, :borrow_date, :appointment_date, :pay_date, :description, :created_at, :updated_at
json.url lending_url(lending, format: :json)
