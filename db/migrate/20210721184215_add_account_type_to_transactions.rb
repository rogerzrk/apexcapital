class AddAccountTypeToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :account_type, :integer
    add_index :transactions, :account_type
  end
end
