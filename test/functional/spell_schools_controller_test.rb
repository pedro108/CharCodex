require 'test_helper'

class SpellSchoolsControllerTest < ActionController::TestCase
  setup do
    @spell_school = spell_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spell_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spell_school" do
    assert_difference('SpellSchool.count') do
      post :create, :spell_school => @spell_school.attributes
    end

    assert_redirected_to spell_school_path(assigns(:spell_school))
  end

  test "should show spell_school" do
    get :show, :id => @spell_school.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spell_school.to_param
    assert_response :success
  end

  test "should update spell_school" do
    put :update, :id => @spell_school.to_param, :spell_school => @spell_school.attributes
    assert_redirected_to spell_school_path(assigns(:spell_school))
  end

  test "should destroy spell_school" do
    assert_difference('SpellSchool.count', -1) do
      delete :destroy, :id => @spell_school.to_param
    end

    assert_redirected_to spell_schools_path
  end
end
