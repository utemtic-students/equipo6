require 'test_helper'

class CompanyControllerTest < ActionController::TestCase
  test "should get business" do
    get :business
    assert_response :success
  end

end
