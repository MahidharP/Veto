require 'test_helper'

class MydataControllerTest < ActionController::TestCase
  setup do
    @mydatum = mydata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mydata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mydatum" do
    assert_difference('Mydatum.count') do
      post :create, mydatum: { student_name: @mydatum.student_name, user: @mydatum.user }
    end

    assert_redirected_to mydatum_path(assigns(:mydatum))
  end

  test "should show mydatum" do
    get :show, id: @mydatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mydatum
    assert_response :success
  end

  test "should update mydatum" do
    patch :update, id: @mydatum, mydatum: { student_name: @mydatum.student_name, user: @mydatum.user }
    assert_redirected_to mydatum_path(assigns(:mydatum))
  end

  test "should destroy mydatum" do
    assert_difference('Mydatum.count', -1) do
      delete :destroy, id: @mydatum
    end

    assert_redirected_to mydata_path
  end
end
