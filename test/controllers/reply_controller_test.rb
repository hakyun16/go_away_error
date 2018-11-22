require 'test_helper'

class ReplyControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destry" do
    get :destry
    assert_response :success
  end

end
