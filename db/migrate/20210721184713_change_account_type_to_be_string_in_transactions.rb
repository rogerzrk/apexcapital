class ChangeAccountTypeToBeStringInTransactions < ActiveRecord::Migration[6.1]
  def change
    change_column :transactions, :account_type, :string
  end
end
