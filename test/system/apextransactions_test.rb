require "application_system_test_case"

class ApextransactionsTest < ApplicationSystemTestCase
  setup do
    @apextransaction = apextransactions(:one)
  end

  test "visiting the index" do
    visit apextransactions_url
    assert_selector "h1", text: "Apextransactions"
  end

  test "creating a Apextransaction" do
    visit apextransactions_url
    click_on "New Apextransaction"

    fill_in "Description", with: @apextransaction.description
    fill_in "Time", with: @apextransaction.time
    fill_in "Transaction", with: @apextransaction.transaction_id
    click_on "Create Apextransaction"

    assert_text "Apextransaction was successfully created"
    click_on "Back"
  end

  test "updating a Apextransaction" do
    visit apextransactions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @apextransaction.description
    fill_in "Time", with: @apextransaction.time
    fill_in "Transaction", with: @apextransaction.transaction_id
    click_on "Update Apextransaction"

    assert_text "Apextransaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Apextransaction" do
    visit apextransactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apextransaction was successfully destroyed"
  end
end
