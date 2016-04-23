require 'test_helper'

class TipsControllerTest < ActionController::TestCase
  setup do
    @tip = tips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tips)
  end

  test "should create tip" do
    assert_difference('Tip.count') do
      post :create, tip: {  }
    end

    assert_response 201
  end

  test "should show tip" do
    get :show, id: @tip
    assert_response :success
  end

  test "should update tip" do
    put :update, id: @tip, tip: {  }
    assert_response 204
  end

  test "should destroy tip" do
    assert_difference('Tip.count', -1) do
      delete :destroy, id: @tip
    end

    assert_response 204
  end
end
