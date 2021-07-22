class RemoveAccountTransaction < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :account, :string
  end
end
