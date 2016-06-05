require 'test_helper'

class CollegeLevelsControllerTest < ActionController::TestCase
  setup do
    @college_level = college_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:college_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college_level" do
    assert_difference('CollegeLevel.count') do
      post :create, college_level: { college_level_id: @college_level.college_level_id }
    end

    assert_redirected_to college_level_path(assigns(:college_level))
  end

  test "should show college_level" do
    get :show, id: @college_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college_level
    assert_response :success
  end

  test "should update college_level" do
    patch :update, id: @college_level, college_level: { college_level_id: @college_level.college_level_id }
    assert_redirected_to college_level_path(assigns(:college_level))
  end

  test "should destroy college_level" do
    assert_difference('CollegeLevel.count', -1) do
      delete :destroy, id: @college_level
    end

    assert_redirected_to college_levels_path
  end
end
