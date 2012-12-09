require 'test_helper'

class CharacterClassSpellsControllerTest < ActionController::TestCase
  setup do
    @character_class_spell = character_class_spells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_spells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_class_spell" do
    assert_difference('CharacterClassSpell.count') do
      post :create, :character_class_spell => @character_class_spell.attributes
    end

    assert_redirected_to character_class_spell_path(assigns(:character_class_spell))
  end

  test "should show character_class_spell" do
    get :show, :id => @character_class_spell.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @character_class_spell.to_param
    assert_response :success
  end

  test "should update character_class_spell" do
    put :update, :id => @character_class_spell.to_param, :character_class_spell => @character_class_spell.attributes
    assert_redirected_to character_class_spell_path(assigns(:character_class_spell))
  end

  test "should destroy character_class_spell" do
    assert_difference('CharacterClassSpell.count', -1) do
      delete :destroy, :id => @character_class_spell.to_param
    end

    assert_redirected_to character_class_spells_path
  end
end
