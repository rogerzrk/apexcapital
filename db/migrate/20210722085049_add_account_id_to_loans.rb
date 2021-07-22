class AddAccountIdToLoans < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :account_id, :integer
    add_index :loans, :account_id
  end
end
