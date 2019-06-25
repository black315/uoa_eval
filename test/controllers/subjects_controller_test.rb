require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subjects_index_url
    assert_response :success
    assert_equal Subject.all, assigns(:subjects)
  end

  test "should get show" do
    get subjects_show_url(1)
    assert_response :success
  end

  test "should get create" do
    post subjects_create_url, params: {subject: {name: "test"}}
    assert_redirected_to subjects_index_url
  end
end
