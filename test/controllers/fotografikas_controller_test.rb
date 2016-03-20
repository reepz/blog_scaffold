require 'test_helper'

class FotografikasControllerTest < ActionController::TestCase
  setup do
    @fotografika = fotografikas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotografikas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotografika" do
    assert_difference('Fotografika.count') do
      post :create, fotografika: {  }
    end

    assert_redirected_to fotografika_path(assigns(:fotografika))
  end

  test "should show fotografika" do
    get :show, id: @fotografika
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotografika
    assert_response :success
  end

  test "should update fotografika" do
    patch :update, id: @fotografika, fotografika: {  }
    assert_redirected_to fotografika_path(assigns(:fotografika))
  end

  test "should destroy fotografika" do
    assert_difference('Fotografika.count', -1) do
      delete :destroy, id: @fotografika
    end

    assert_redirected_to fotografikas_path
  end
end
