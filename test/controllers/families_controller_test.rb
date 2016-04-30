require 'test_helper'

class FamiliesControllerTest < ActionController::TestCase
  setup do
    @family = families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:families)
  end

  test "should create family" do
    assert_difference('Family.count') do
      post :create, family: {  }
    end

    assert_response 201
  end

  test "should show family" do
    get :show, id: @family
    assert_response :success
  end

  test "should update family" do
    put :update, id: @family, family: {  }
    assert_response 204
  end

  test "should destroy family" do
    assert_difference('Family.count', -1) do
      delete :destroy, id: @family
    end

    assert_response 204
  end
end
