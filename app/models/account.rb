class Account < ApplicationRecord
	has_many :apextransactions
	has_many :loans
	has_many :savings
	has_many :transactions
end
