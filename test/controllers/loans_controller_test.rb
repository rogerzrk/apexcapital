require "test_helper"

class LoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get loans_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_url
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post loans_url, params: { loan: { charges: @loan.charges, doc_ref: @loan.doc_ref, guarantor_relation: @loan.guarantor_relation, guarantor_tel: @loan.guarantor_tel, interest_rate: @loan.interest_rate, loan_amount: @loan.loan_amount, loan_guarantor: @loan.loan_guarantor, loan_period: @loan.loan_period, loan_security: @loan.loan_security, payment_terms: @loan.payment_terms, security_valuation: @loan.security_valuation } }
    end

    assert_redirected_to loan_url(Loan.last)
  end

  test "should show loan" do
    get loan_url(@loan)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_url(@loan)
    assert_response :success
  end

  test "should update loan" do
    patch loan_url(@loan), params: { loan: { charges: @loan.charges, doc_ref: @loan.doc_ref, guarantor_relation: @loan.guarantor_relation, guarantor_tel: @loan.guarantor_tel, interest_rate: @loan.interest_rate, loan_amount: @loan.loan_amount, loan_guarantor: @loan.loan_guarantor, loan_period: @loan.loan_period, loan_security: @loan.loan_security, payment_terms: @loan.payment_terms, security_valuation: @loan.security_valuation } }
    assert_redirected_to loan_url(@loan)
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete loan_url(@loan)
    end

    assert_redirected_to loans_url
  end
end
