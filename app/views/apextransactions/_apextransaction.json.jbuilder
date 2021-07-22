json.extract! apextransaction, :id, :description, :time, :transaction_id, :created_at, :updated_at
json.url apextransaction_url(apextransaction, format: :json)
