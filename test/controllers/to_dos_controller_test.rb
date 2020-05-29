require 'test_helper'

class ToDosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get to_dos_index_url
    assert_response :success
  end

  test "should get view" do
    get to_dos_view_url
    assert_response :success
  end

  test "should get new" do
    get to_dos_new_url
    assert_response :success
  end

end
