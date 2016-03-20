require 'test_helper'

class SztalugisControllerTest < ActionController::TestCase
  setup do
    @sztalugi = sztalugis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sztalugis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sztalugi" do
    assert_difference('Sztalugi.count') do
      post :create, sztalugi: {  }
    end

    assert_redirected_to sztalugi_path(assigns(:sztalugi))
  end

  test "should show sztalugi" do
    get :show, id: @sztalugi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sztalugi
    assert_response :success
  end

  test "should update sztalugi" do
    patch :update, id: @sztalugi, sztalugi: {  }
    assert_redirected_to sztalugi_path(assigns(:sztalugi))
  end

  test "should destroy sztalugi" do
    assert_difference('Sztalugi.count', -1) do
      delete :destroy, id: @sztalugi
    end

    assert_redirected_to sztalugis_path
  end
end
