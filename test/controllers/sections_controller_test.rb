require "test_helper"

class SectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sections_new_url
    assert_response :success
  end
end
