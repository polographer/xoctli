require "test_helper"

class ContainersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get containers_index_url
    assert_response :success
  end

  test "should get list" do
    get containers_list_url
    assert_response :success
  end

  test "should get inspect" do
    get containers_inspect_url
    assert_response :success
  end
end
