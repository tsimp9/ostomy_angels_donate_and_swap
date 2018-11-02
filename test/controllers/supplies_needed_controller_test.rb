require 'test_helper'

class SuppliesNeededControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supplies_needed_index_url
    assert_response :success
  end

  test "should get show" do
    get supplies_needed_show_url
    assert_response :success
  end

  test "should get new" do
    get supplies_needed_new_url
    assert_response :success
  end

  test "should get create" do
    get supplies_needed_create_url
    assert_response :success
  end

  test "should get edit" do
    get supplies_needed_edit_url
    assert_response :success
  end

end
