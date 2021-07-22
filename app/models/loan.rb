class Loan < ApplicationRecord
	belongs_to :account
	belongs_to :client
	has_many :transactions, through: :account 
end
