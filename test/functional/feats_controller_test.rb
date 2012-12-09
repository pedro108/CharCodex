require 'test_helper'

class FeatsControllerTest < ActionController::TestCase
  setup do
    @feat = feats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feat" do
    assert_difference('Feat.count') do
      post :create, :feat => @feat.attributes
    end

    assert_redirected_to feat_path(assigns(:feat))
  end

  test "should show feat" do
    get :show, :id => @feat.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @feat.to_param
    assert_response :success
  end

  test "should update feat" do
    put :update, :id => @feat.to_param, :feat => @feat.attributes
    assert_redirected_to feat_path(assigns(:feat))
  end

  test "should destroy feat" do
    assert_difference('Feat.count', -1) do
      delete :destroy, :id => @feat.to_param
    end

    assert_redirected_to feats_path
  end
end
