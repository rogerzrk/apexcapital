require "test_helper"

class ApextransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apextransaction = apextransactions(:one)
  end

  test "should get index" do
    get apextransactions_url
    assert_response :success
  end

  test "should get new" do
    get new_apextransaction_url
    assert_response :success
  end

  test "should create apextransaction" do
    assert_difference('Apextransaction.count') do
      post apextransactions_url, params: { apextransaction: { description: @apextransaction.description, time: @apextransaction.time, transaction_id: @apextransaction.transaction_id } }
    end

    assert_redirected_to apextransaction_url(Apextransaction.last)
  end

  test "should show apextransaction" do
    get apextransaction_url(@apextransaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_apextransaction_url(@apextransaction)
    assert_response :success
  end

  test "should update apextransaction" do
    patch apextransaction_url(@apextransaction), params: { apextransaction: { description: @apextransaction.description, time: @apextransaction.time, transaction_id: @apextransaction.transaction_id } }
    assert_redirected_to apextransaction_url(@apextransaction)
  end

  test "should destroy apextransaction" do
    assert_difference('Apextransaction.count', -1) do
      delete apextransaction_url(@apextransaction)
    end

    assert_redirected_to apextransactions_url
  end
end
