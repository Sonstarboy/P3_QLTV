json.extract! reader, :id, :code_card, :name, :birthday, :phone, :unit, :start_date, :end_date, :created_at, :updated_at
json.url reader_url(reader, format: :json)
