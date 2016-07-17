require 'test_helper'

class CompanyControllerTest < ActionController::TestCase
  test "should get registrarEmpresa" do
    get :registrarEmpresa
    assert_response :success
  end

end
