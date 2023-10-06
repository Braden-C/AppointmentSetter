json.extract! appointmentsdb, :id, :first_name, :last_name, :email, :phone, :date, :created_at, :updated_at
json.url appointmentsdb_url(appointmentsdb, format: :json)
