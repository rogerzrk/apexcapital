class AddLoanIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :loan_id, :integer
    add_index :transactions, :loan_id
  end
end
