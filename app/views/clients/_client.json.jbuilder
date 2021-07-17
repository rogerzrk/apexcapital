json.extract! client, :id, :sur_name, :first_name, :other_name, :gender, :relationship_status, :number_dependents, :nationality, :profession, :nin, :phone_number1, :phone_number2, :r_village, :r_parish, :r_county, :r_district, :work_place, :work_location, :kin_surname, :kin_firstname, :kin_relation, :kin_phone, :created_at, :updated_at
json.url client_url(client, format: :json)
