require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get Pharmacy" do
    get :Pharmacy
    assert_response :success
  end

  test "should get Topics" do
    get :Topics
    assert_response :success
  end

  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

end
