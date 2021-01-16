require 'test_helper'

class KariMainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kari_main_index_url
    assert_response :success
  end

end
