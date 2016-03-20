require 'test_helper'

class WallPaintingsControllerTest < ActionController::TestCase
  setup do
    @wall_painting = wall_paintings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wall_paintings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wall_painting" do
    assert_difference('WallPainting.count') do
      post :create, wall_painting: {  }
    end

    assert_redirected_to wall_painting_path(assigns(:wall_painting))
  end

  test "should show wall_painting" do
    get :show, id: @wall_painting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wall_painting
    assert_response :success
  end

  test "should update wall_painting" do
    patch :update, id: @wall_painting, wall_painting: {  }
    assert_redirected_to wall_painting_path(assigns(:wall_painting))
  end

  test "should destroy wall_painting" do
    assert_difference('WallPainting.count', -1) do
      delete :destroy, id: @wall_painting
    end

    assert_redirected_to wall_paintings_path
  end
end
