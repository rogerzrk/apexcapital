class AddClientIdToLoans < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :client_id, :integer
    add_index :loans, :client_id
  end
end
