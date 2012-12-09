require 'test_helper'

class RaceAttributesControllerTest < ActionController::TestCase
  setup do
    @race_attribute = race_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:race_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race_attribute" do
    assert_difference('RaceAttribute.count') do
      post :create, :race_attribute => @race_attribute.attributes
    end

    assert_redirected_to race_attribute_path(assigns(:race_attribute))
  end

  test "should show race_attribute" do
    get :show, :id => @race_attribute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @race_attribute.to_param
    assert_response :success
  end

  test "should update race_attribute" do
    put :update, :id => @race_attribute.to_param, :race_attribute => @race_attribute.attributes
    assert_redirected_to race_attribute_path(assigns(:race_attribute))
  end

  test "should destroy race_attribute" do
    assert_difference('RaceAttribute.count', -1) do
      delete :destroy, :id => @race_attribute.to_param
    end

    assert_redirected_to race_attributes_path
  end
end
