require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get registration" do
    get :registration
    assert_response :success
  end

  test "should get examination" do
    get :examination
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

  test "should get scholarship" do
    get :scholarship
    assert_response :success
  end

  test "should get event" do
    get :event
    assert_response :success
  end

end
