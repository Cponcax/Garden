require 'test_helper'

class FamilyImagesControllerTest < ActionController::TestCase
  setup do
    @family_image = family_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_images)
  end

  test "should create family_image" do
    assert_difference('FamilyImage.count') do
      post :create, family_image: {  }
    end

    assert_response 201
  end

  test "should show family_image" do
    get :show, id: @family_image
    assert_response :success
  end

  test "should update family_image" do
    put :update, id: @family_image, family_image: {  }
    assert_response 204
  end

  test "should destroy family_image" do
    assert_difference('FamilyImage.count', -1) do
      delete :destroy, id: @family_image
    end

    assert_response 204
  end
end
