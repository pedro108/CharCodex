require 'test_helper'

class CharacterClassFeaturesControllerTest < ActionController::TestCase
  setup do
    @character_class_feature = character_class_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_class_feature" do
    assert_difference('CharacterClassFeature.count') do
      post :create, :character_class_feature => @character_class_feature.attributes
    end

    assert_redirected_to character_class_feature_path(assigns(:character_class_feature))
  end

  test "should show character_class_feature" do
    get :show, :id => @character_class_feature.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @character_class_feature.to_param
    assert_response :success
  end

  test "should update character_class_feature" do
    put :update, :id => @character_class_feature.to_param, :character_class_feature => @character_class_feature.attributes
    assert_redirected_to character_class_feature_path(assigns(:character_class_feature))
  end

  test "should destroy character_class_feature" do
    assert_difference('CharacterClassFeature.count', -1) do
      delete :destroy, :id => @character_class_feature.to_param
    end

    assert_redirected_to character_class_features_path
  end
end
