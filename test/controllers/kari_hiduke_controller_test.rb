require 'test_helper'

class KariHidukeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kari_hiduke_index_url
    assert_response :success
  end

end
