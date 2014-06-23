require 'test_helper'

class BigDepartmentsControllerTest < ActionController::TestCase
  setup do
    @big_department = big_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:big_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create big_department" do
    assert_difference('BigDepartment.count') do
      post :create, big_department: { code: @big_department.code, description: @big_department.description, name: @big_department.name }
    end

    assert_redirected_to big_department_path(assigns(:big_department))
  end

  test "should show big_department" do
    get :show, id: @big_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @big_department
    assert_response :success
  end

  test "should update big_department" do
    patch :update, id: @big_department, big_department: { code: @big_department.code, description: @big_department.description, name: @big_department.name }
    assert_redirected_to big_department_path(assigns(:big_department))
  end

  test "should destroy big_department" do
    assert_difference('BigDepartment.count', -1) do
      delete :destroy, id: @big_department
    end

    assert_redirected_to big_departments_path
  end
end
