require 'test_helper'

class ZonesControllerTest < ActionController::TestCase
  setup do
    @zone = zones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zones)
  end

  test "should create zone" do
    assert_difference('Zone.count') do
      post :create, zone: {  }
    end

    assert_response 201
  end

  test "should show zone" do
    get :show, id: @zone
    assert_response :success
  end

  test "should update zone" do
    put :update, id: @zone, zone: {  }
    assert_response 204
  end

  test "should destroy zone" do
    assert_difference('Zone.count', -1) do
      delete :destroy, id: @zone
    end

    assert_response 204
  end
end
