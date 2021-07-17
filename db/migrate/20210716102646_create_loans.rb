class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.string :doc_ref
      t.integer :loan_amount
      t.integer :interest_rate
      t.integer :charges
      t.integer :loan_period
      t.string :payment_terms
      t.string :loan_security
      t.integer :security_valuation
      t.string :loan_guarantor
      t.string :guarantor_tel
      t.string :guarantor_relation

      t.timestamps
    end
  end
end
