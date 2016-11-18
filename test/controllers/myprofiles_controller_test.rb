require 'test_helper'

class MyprofilesControllerTest < ActionController::TestCase
  setup do
    @myprofile = myprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myprofile" do
    assert_difference('Myprofile.count') do
      post :create, myprofile: { student_name: @myprofile.student_name, user_id: @myprofile.user_id }
    end

    assert_redirected_to myprofile_path(assigns(:myprofile))
  end

  test "should show myprofile" do
    get :show, id: @myprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myprofile
    assert_response :success
  end

  test "should update myprofile" do
    patch :update, id: @myprofile, myprofile: { student_name: @myprofile.student_name, user_id: @myprofile.user_id }
    assert_redirected_to myprofile_path(assigns(:myprofile))
  end

  test "should destroy myprofile" do
    assert_difference('Myprofile.count', -1) do
      delete :destroy, id: @myprofile
    end

    assert_redirected_to myprofiles_path
  end
end
