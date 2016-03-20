require 'test_helper'

class UncategorizedObjectsControllerTest < ActionController::TestCase
  setup do
    @uncategorized_object = uncategorized_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uncategorized_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uncategorized_object" do
    assert_difference('UncategorizedObject.count') do
      post :create, uncategorized_object: {  }
    end

    assert_redirected_to uncategorized_object_path(assigns(:uncategorized_object))
  end

  test "should show uncategorized_object" do
    get :show, id: @uncategorized_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uncategorized_object
    assert_response :success
  end

  test "should update uncategorized_object" do
    patch :update, id: @uncategorized_object, uncategorized_object: {  }
    assert_redirected_to uncategorized_object_path(assigns(:uncategorized_object))
  end

  test "should destroy uncategorized_object" do
    assert_difference('UncategorizedObject.count', -1) do
      delete :destroy, id: @uncategorized_object
    end

    assert_redirected_to uncategorized_objects_path
  end
end
