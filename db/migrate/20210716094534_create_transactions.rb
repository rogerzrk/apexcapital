class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :form
      t.string :category
      t.string :account
      t.string :doc_ref
      t.integer :amount

      t.timestamps
    end
  end
end
