require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { first_name: @client.first_name, gender: @client.gender, kin_firstname: @client.kin_firstname, kin_phone: @client.kin_phone, kin_relation: @client.kin_relation, kin_surname: @client.kin_surname, nationality: @client.nationality, nin: @client.nin, number_dependents: @client.number_dependents, other_name: @client.other_name, phone_number1: @client.phone_number1, phone_number2: @client.phone_number2, profession: @client.profession, r_county: @client.r_county, r_district: @client.r_district, r_parish: @client.r_parish, r_village: @client.r_village, relationship_status: @client.relationship_status, sur_name: @client.sur_name, work_location: @client.work_location, work_place: @client.work_place } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { first_name: @client.first_name, gender: @client.gender, kin_firstname: @client.kin_firstname, kin_phone: @client.kin_phone, kin_relation: @client.kin_relation, kin_surname: @client.kin_surname, nationality: @client.nationality, nin: @client.nin, number_dependents: @client.number_dependents, other_name: @client.other_name, phone_number1: @client.phone_number1, phone_number2: @client.phone_number2, profession: @client.profession, r_county: @client.r_county, r_district: @client.r_district, r_parish: @client.r_parish, r_village: @client.r_village, relationship_status: @client.relationship_status, sur_name: @client.sur_name, work_location: @client.work_location, work_place: @client.work_place } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
