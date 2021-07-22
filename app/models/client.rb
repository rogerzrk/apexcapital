class Client < ApplicationRecord
	has_one :savings
	has_many :loans 
end
