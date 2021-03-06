require 'test_helper'

class OutlinesControllerTest < ActionController::TestCase
  setup do
    @outline = outlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outline" do
    assert_difference('Outline.count') do
      post :create, outline: { class: @outline.class, dob: @outline.dob, email: @outline.email, father_designation: @outline.father_designation, father_name: @outline.father_name, father_occupation: @outline.father_occupation, gender: @outline.gender, income: @outline.income, mother_name: @outline.mother_name, mother_occupation: @outline.mother_occupation, nationality: @outline.nationality, phone_number: @outline.phone_number, religion: @outline.religion, student_name: @outline.student_name, telephone: @outline.telephone, user_id: @outline.user_id }
    end

    assert_redirected_to outline_path(assigns(:outline))
  end

  test "should show outline" do
    get :show, id: @outline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outline
    assert_response :success
  end

  test "should update outline" do
    patch :update, id: @outline, outline: { class: @outline.class, dob: @outline.dob, email: @outline.email, father_designation: @outline.father_designation, father_name: @outline.father_name, father_occupation: @outline.father_occupation, gender: @outline.gender, income: @outline.income, mother_name: @outline.mother_name, mother_occupation: @outline.mother_occupation, nationality: @outline.nationality, phone_number: @outline.phone_number, religion: @outline.religion, student_name: @outline.student_name, telephone: @outline.telephone, user_id: @outline.user_id }
    assert_redirected_to outline_path(assigns(:outline))
  end

  test "should destroy outline" do
    assert_difference('Outline.count', -1) do
      delete :destroy, id: @outline
    end

    assert_redirected_to outlines_path
  end
end
