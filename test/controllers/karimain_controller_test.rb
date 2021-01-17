require 'test_helper'

class KarimainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get karimain_index_url
    assert_response :success
  end

end
