require 'test_helper'

class MyaccountsControllerTest < ActionController::TestCase
  setup do
    @myaccount = myaccounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myaccounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myaccount" do
    assert_difference('Myaccount.count') do
      post :create, myaccount: { class: @myaccount.class, dob: @myaccount.dob, email: @myaccount.email, father_designation: @myaccount.father_designation, father_name: @myaccount.father_name, father_occupation: @myaccount.father_occupation, gender: @myaccount.gender, income: @myaccount.income, mother_name: @myaccount.mother_name, mother_occupation: @myaccount.mother_occupation, nationality: @myaccount.nationality, phone_number: @myaccount.phone_number, religion: @myaccount.religion, student_name: @myaccount.student_name, telephone: @myaccount.telephone, user_id: @myaccount.user_id }
    end

    assert_redirected_to myaccount_path(assigns(:myaccount))
  end

  test "should show myaccount" do
    get :show, id: @myaccount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myaccount
    assert_response :success
  end

  test "should update myaccount" do
    patch :update, id: @myaccount, myaccount: { class: @myaccount.class, dob: @myaccount.dob, email: @myaccount.email, father_designation: @myaccount.father_designation, father_name: @myaccount.father_name, father_occupation: @myaccount.father_occupation, gender: @myaccount.gender, income: @myaccount.income, mother_name: @myaccount.mother_name, mother_occupation: @myaccount.mother_occupation, nationality: @myaccount.nationality, phone_number: @myaccount.phone_number, religion: @myaccount.religion, student_name: @myaccount.student_name, telephone: @myaccount.telephone, user_id: @myaccount.user_id }
    assert_redirected_to myaccount_path(assigns(:myaccount))
  end

  test "should destroy myaccount" do
    assert_difference('Myaccount.count', -1) do
      delete :destroy, id: @myaccount
    end

    assert_redirected_to myaccounts_path
  end
end
