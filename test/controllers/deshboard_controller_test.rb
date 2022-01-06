require "test_helper"

class DeshboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deshboard_index_url
    assert_response :success
  end

  test "should get show" do
    get deshboard_show_url
    assert_response :success
  end

  test "should get new" do
    get deshboard_new_url
    assert_response :success
  end

  test "should get edit" do
    get deshboard_edit_url
    assert_response :success
  end

  test "should get delete" do
    get deshboard_delete_url
    assert_response :success
  end
end
