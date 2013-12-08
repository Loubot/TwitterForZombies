require 'test_helper'

class RolesControllerTest < ActionController::TestCase
  test "should get addRole" do
    get :addRole
    assert_response :success
  end

end
