require "test_helper"

class SavingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saving = savings(:one)
  end

  test "should get index" do
    get savings_url
    assert_response :success
  end

  test "should get new" do
    get new_saving_url
    assert_response :success
  end

  test "should create saving" do
    assert_difference('Saving.count') do
      post savings_url, params: { saving: { interest_rate: @saving.interest_rate, status: @saving.status } }
    end

    assert_redirected_to saving_url(Saving.last)
  end

  test "should show saving" do
    get saving_url(@saving)
    assert_response :success
  end

  test "should get edit" do
    get edit_saving_url(@saving)
    assert_response :success
  end

  test "should update saving" do
    patch saving_url(@saving), params: { saving: { interest_rate: @saving.interest_rate, status: @saving.status } }
    assert_redirected_to saving_url(@saving)
  end

  test "should destroy saving" do
    assert_difference('Saving.count', -1) do
      delete saving_url(@saving)
    end

    assert_redirected_to savings_url
  end
end
