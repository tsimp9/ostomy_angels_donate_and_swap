require 'test_helper'

class SupplyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get supply_show_url
    assert_response :success
  end

  test "should get index" do
    get supply_index_url
    assert_response :success
  end

  test "should get new" do
    get supply_new_url
    assert_response :success
  end

  test "should get create" do
    get supply_create_url
    assert_response :success
  end

  test "should get edit" do
    get supply_edit_url
    assert_response :success
  end

end
