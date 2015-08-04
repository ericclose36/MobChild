require 'test_helper'

class InterestsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get anime" do
    get :anime
    assert_response :success
  end

  test "should get films" do
    get :films
    assert_response :success
  end

  test "should get football" do
    get :football
    assert_response :success
  end

  test "should get swimming" do
    get :swimming
    assert_response :success
  end

  test "should get writing" do
    get :writing
    assert_response :success
  end

end
