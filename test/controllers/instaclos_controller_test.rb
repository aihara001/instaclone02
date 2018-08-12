require 'test_helper'

class InstaclosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instaclos_index_url
    assert_response :success
  end

end
