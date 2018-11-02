require 'test_helper'

class SuppliesAvailableControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supplies_available_index_url
    assert_response :success
  end

  test "should get show" do
    get supplies_available_show_url
    assert_response :success
  end

  test "should get new" do
    get supplies_available_new_url
    assert_response :success
  end

  test "should get create" do
    get supplies_available_create_url
    assert_response :success
  end

  test "should get edit" do
    get supplies_available_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get supplies_available_destroy_url
    assert_response :success
  end

end
