require 'test_helper'

class ZoneFamiliesControllerTest < ActionController::TestCase
  setup do
    @zone_family = zone_families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zone_families)
  end

  test "should create zone_family" do
    assert_difference('ZoneFamily.count') do
      post :create, zone_family: {  }
    end

    assert_response 201
  end

  test "should show zone_family" do
    get :show, id: @zone_family
    assert_response :success
  end

  test "should update zone_family" do
    put :update, id: @zone_family, zone_family: {  }
    assert_response 204
  end

  test "should destroy zone_family" do
    assert_difference('ZoneFamily.count', -1) do
      delete :destroy, id: @zone_family
    end

    assert_response 204
  end
end
