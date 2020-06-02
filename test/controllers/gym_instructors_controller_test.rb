# frozen_string_literal: true

require 'test_helper'

class GymInstructorsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get gym_instructors_index_url
    assert_response :success
  end

  test 'should get show' do
    get gym_instructors_show_url
    assert_response :success
  end

  test 'should get create' do
    get gym_instructors_create_url
    assert_response :success
  end

  test 'should get update' do
    get gym_instructors_update_url
    assert_response :success
  end

  test 'should get destroy' do
    get gym_instructors_destroy_url
    assert_response :success
  end
end
