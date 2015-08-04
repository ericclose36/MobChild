require 'test_helper'

class CourseWorkControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get course01" do
    get :course01
    assert_response :success
  end

  test "should get course02" do
    get :course02
    assert_response :success
  end

  test "should get course03" do
    get :course03
    assert_response :success
  end

  test "should get course04" do
    get :course04
    assert_response :success
  end

  test "should get course05" do
    get :course05
    assert_response :success
  end

end
