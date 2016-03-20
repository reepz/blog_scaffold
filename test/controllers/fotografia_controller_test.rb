require 'test_helper'

class FotografiaControllerTest < ActionController::TestCase
  setup do
    @fotografium = fotografia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotografia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotografium" do
    assert_difference('Fotografium.count') do
      post :create, fotografium: {  }
    end

    assert_redirected_to fotografium_path(assigns(:fotografium))
  end

  test "should show fotografium" do
    get :show, id: @fotografium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotografium
    assert_response :success
  end

  test "should update fotografium" do
    patch :update, id: @fotografium, fotografium: {  }
    assert_redirected_to fotografium_path(assigns(:fotografium))
  end

  test "should destroy fotografium" do
    assert_difference('Fotografium.count', -1) do
      delete :destroy, id: @fotografium
    end

    assert_redirected_to fotografia_path
  end
end
