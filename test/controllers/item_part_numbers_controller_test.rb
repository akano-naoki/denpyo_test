require 'test_helper'

class ItemPartNumbersControllerTest < ActionController::TestCase
  setup do
    @item_part_number = item_part_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_part_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_part_number" do
    assert_difference('ItemPartNumber.count') do
      post :create, item_part_number: { category_code: @item_part_number.category_code, code: @item_part_number.code, description: @item_part_number.description, name: @item_part_number.name }
    end

    assert_redirected_to item_part_number_path(assigns(:item_part_number))
  end

  test "should show item_part_number" do
    get :show, id: @item_part_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_part_number
    assert_response :success
  end

  test "should update item_part_number" do
    patch :update, id: @item_part_number, item_part_number: { category_code: @item_part_number.category_code, code: @item_part_number.code, description: @item_part_number.description, name: @item_part_number.name }
    assert_redirected_to item_part_number_path(assigns(:item_part_number))
  end

  test "should destroy item_part_number" do
    assert_difference('ItemPartNumber.count', -1) do
      delete :destroy, id: @item_part_number
    end

    assert_redirected_to item_part_numbers_path
  end
end
