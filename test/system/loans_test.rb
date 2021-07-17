require "application_system_test_case"

class LoansTest < ApplicationSystemTestCase
  setup do
    @loan = loans(:one)
  end

  test "visiting the index" do
    visit loans_url
    assert_selector "h1", text: "Loans"
  end

  test "creating a Loan" do
    visit loans_url
    click_on "New Loan"

    fill_in "Charges", with: @loan.charges
    fill_in "Doc ref", with: @loan.doc_ref
    fill_in "Guarantor relation", with: @loan.guarantor_relation
    fill_in "Guarantor tel", with: @loan.guarantor_tel
    fill_in "Interest rate", with: @loan.interest_rate
    fill_in "Loan amount", with: @loan.loan_amount
    fill_in "Loan guarantor", with: @loan.loan_guarantor
    fill_in "Loan period", with: @loan.loan_period
    fill_in "Loan security", with: @loan.loan_security
    fill_in "Payment terms", with: @loan.payment_terms
    fill_in "Security valuation", with: @loan.security_valuation
    click_on "Create Loan"

    assert_text "Loan was successfully created"
    click_on "Back"
  end

  test "updating a Loan" do
    visit loans_url
    click_on "Edit", match: :first

    fill_in "Charges", with: @loan.charges
    fill_in "Doc ref", with: @loan.doc_ref
    fill_in "Guarantor relation", with: @loan.guarantor_relation
    fill_in "Guarantor tel", with: @loan.guarantor_tel
    fill_in "Interest rate", with: @loan.interest_rate
    fill_in "Loan amount", with: @loan.loan_amount
    fill_in "Loan guarantor", with: @loan.loan_guarantor
    fill_in "Loan period", with: @loan.loan_period
    fill_in "Loan security", with: @loan.loan_security
    fill_in "Payment terms", with: @loan.payment_terms
    fill_in "Security valuation", with: @loan.security_valuation
    click_on "Update Loan"

    assert_text "Loan was successfully updated"
    click_on "Back"
  end

  test "destroying a Loan" do
    visit loans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loan was successfully destroyed"
  end
end
