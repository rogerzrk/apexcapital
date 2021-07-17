json.extract! transaction, :id, :form, :category, :account, :doc_ref, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
