require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "First name", with: @client.first_name
    check "Gender" if @client.gender
    fill_in "Kin firstname", with: @client.kin_firstname
    fill_in "Kin phone", with: @client.kin_phone
    fill_in "Kin relation", with: @client.kin_relation
    fill_in "Kin surname", with: @client.kin_surname
    fill_in "Nationality", with: @client.nationality
    fill_in "Nin", with: @client.nin
    fill_in "Number dependents", with: @client.number_dependents
    fill_in "Other name", with: @client.other_name
    fill_in "Phone number1", with: @client.phone_number1
    fill_in "Phone number2", with: @client.phone_number2
    fill_in "Profession", with: @client.profession
    fill_in "R county", with: @client.r_county
    fill_in "R district", with: @client.r_district
    fill_in "R parish", with: @client.r_parish
    fill_in "R village", with: @client.r_village
    fill_in "Relationship status", with: @client.relationship_status
    fill_in "Sur name", with: @client.sur_name
    fill_in "Work location", with: @client.work_location
    fill_in "Work place", with: @client.work_place
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "First name", with: @client.first_name
    check "Gender" if @client.gender
    fill_in "Kin firstname", with: @client.kin_firstname
    fill_in "Kin phone", with: @client.kin_phone
    fill_in "Kin relation", with: @client.kin_relation
    fill_in "Kin surname", with: @client.kin_surname
    fill_in "Nationality", with: @client.nationality
    fill_in "Nin", with: @client.nin
    fill_in "Number dependents", with: @client.number_dependents
    fill_in "Other name", with: @client.other_name
    fill_in "Phone number1", with: @client.phone_number1
    fill_in "Phone number2", with: @client.phone_number2
    fill_in "Profession", with: @client.profession
    fill_in "R county", with: @client.r_county
    fill_in "R district", with: @client.r_district
    fill_in "R parish", with: @client.r_parish
    fill_in "R village", with: @client.r_village
    fill_in "Relationship status", with: @client.relationship_status
    fill_in "Sur name", with: @client.sur_name
    fill_in "Work location", with: @client.work_location
    fill_in "Work place", with: @client.work_place
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
