class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :sur_name
      t.string :first_name
      t.string :other_name
      t.string :gender
      t.string :relationship_status
      t.integer :number_dependents
      t.string :nationality
      t.string :profession
      t.string :nin
      t.string :phone_number1
      t.string :phone_number2
      t.string :r_village
      t.string :r_parish
      t.string :r_county
      t.string :r_district
      t.string :work_place
      t.string :work_location
      t.string :kin_surname
      t.string :kin_firstname
      t.string :kin_relation
      t.string :kin_phone

      t.timestamps
    end
  end
end
