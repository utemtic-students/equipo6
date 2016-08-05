require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should get question" do
    get :question
    assert_response :success
  end

end
