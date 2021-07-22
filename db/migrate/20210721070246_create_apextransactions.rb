class CreateApextransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :apextransactions do |t|
      t.string :description
      t.datetime :time
      t.references :transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
