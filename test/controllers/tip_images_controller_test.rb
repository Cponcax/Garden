require 'test_helper'

class TipImagesControllerTest < ActionController::TestCase
  setup do
    @tip_image = tip_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tip_images)
  end

  test "should create tip_image" do
    assert_difference('TipImage.count') do
      post :create, tip_image: {  }
    end

    assert_response 201
  end

  test "should show tip_image" do
    get :show, id: @tip_image
    assert_response :success
  end

  test "should update tip_image" do
    put :update, id: @tip_image, tip_image: {  }
    assert_response 204
  end

  test "should destroy tip_image" do
    assert_difference('TipImage.count', -1) do
      delete :destroy, id: @tip_image
    end

    assert_response 204
  end
end
