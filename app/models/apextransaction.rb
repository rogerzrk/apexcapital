class Apextransaction < ApplicationRecord
  belongs_to :account
  has_many :transactions, :through => :account
end
