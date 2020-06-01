require 'test_helper'

class GymClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gym_classes_index_url
    assert_response :success
  end

  test "should get show" do
    get gym_classes_show_url
    assert_response :success
  end

  test "should get create" do
    get gym_classes_create_url
    assert_response :success
  end

  test "should get update" do
    get gym_classes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gym_classes_destroy_url
    assert_response :success
  end

end
