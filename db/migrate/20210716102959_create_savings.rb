class CreateSavings < ActiveRecord::Migration[6.1]
  def change
    create_table :savings do |t|
      t.boolean :status
      t.integer :interest_rate
 

      t.timestamps
    end
  end
end
