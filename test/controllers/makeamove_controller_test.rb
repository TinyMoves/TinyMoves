require 'test_helper'

class MakeamoveControllerTest < ActionController::TestCase
  test "should get makemove" do
    get :makemove
    assert_response :success
  end

end
