require 'test_helper'

class EssentialsControllerTest < ActionController::TestCase
  setup do
    @essential = essentials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:essentials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create essential" do
    assert_difference('Essential.count') do
      post :create, essential: {  }
    end

    assert_redirected_to essential_path(assigns(:essential))
  end

  test "should show essential" do
    get :show, id: @essential
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @essential
    assert_response :success
  end

  test "should update essential" do
    patch :update, id: @essential, essential: {  }
    assert_redirected_to essential_path(assigns(:essential))
  end

  test "should destroy essential" do
    assert_difference('Essential.count', -1) do
      delete :destroy, id: @essential
    end

    assert_redirected_to essentials_path
  end
end
