require 'test_helper'

class ShopDepartmentsControllerTest < ActionController::TestCase
  setup do
    @shop_department = shop_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_department" do
    assert_difference('ShopDepartment.count') do
      post :create, shop_department: { name: @shop_department.name }
    end

    assert_redirected_to shop_department_path(assigns(:shop_department))
  end

  test "should show shop_department" do
    get :show, id: @shop_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_department
    assert_response :success
  end

  test "should update shop_department" do
    patch :update, id: @shop_department, shop_department: { name: @shop_department.name }
    assert_redirected_to shop_department_path(assigns(:shop_department))
  end

  test "should destroy shop_department" do
    assert_difference('ShopDepartment.count', -1) do
      delete :destroy, id: @shop_department
    end

    assert_redirected_to shop_departments_path
  end
end
