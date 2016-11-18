require 'test_helper'

class MyformsControllerTest < ActionController::TestCase
  setup do
    @myform = myforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myform" do
    assert_difference('Myform.count') do
      post :create, myform: { student_name: @myform.student_name, user_id: @myform.user_id }
    end

    assert_redirected_to myform_path(assigns(:myform))
  end

  test "should show myform" do
    get :show, id: @myform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myform
    assert_response :success
  end

  test "should update myform" do
    patch :update, id: @myform, myform: { student_name: @myform.student_name, user_id: @myform.user_id }
    assert_redirected_to myform_path(assigns(:myform))
  end

  test "should destroy myform" do
    assert_difference('Myform.count', -1) do
      delete :destroy, id: @myform
    end

    assert_redirected_to myforms_path
  end
end
