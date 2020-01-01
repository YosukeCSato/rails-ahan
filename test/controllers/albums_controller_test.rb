require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get albums_index_url
    assert_response :success
  end

  test "should get show" do
    get albums_show_url
    assert_response :success
  end

  test "should get add" do
    get albums_add_url
    assert_response :success
  end

  test "should get edit" do
    get albums_edit_url
    assert_response :success
  end

end
