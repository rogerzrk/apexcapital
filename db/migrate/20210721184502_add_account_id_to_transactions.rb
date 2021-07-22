class AddAccountIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :account_id, :integer
    add_index :transactions, :account_id
  end
end
