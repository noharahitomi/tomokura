require 'test_helper'

class SpendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spendings_index_url
    assert_response :success
  end

end
