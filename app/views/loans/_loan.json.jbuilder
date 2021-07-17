json.extract! loan, :id, :doc_ref, :loan_amount, :interest_rate, :charges, :loan_period, :payment_terms, :loan_security, :security_valuation, :loan_guarantor, :guarantor_tel, :guarantor_relation, :created_at, :updated_at
json.url loan_url(loan, format: :json)
