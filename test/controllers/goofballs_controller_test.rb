require 'test_helper'

class GoofballsControllerTest < ActionController::TestCase
  setup do
    @goofball = goofballs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goofballs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goofball" do
    assert_difference('Goofball.count') do
      post :create, goofball: { user_id: @goofball.user_id }
    end

    assert_redirected_to goofball_path(assigns(:goofball))
  end

  test "should show goofball" do
    get :show, id: @goofball
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goofball
    assert_response :success
  end

  test "should update goofball" do
    patch :update, id: @goofball, goofball: { user_id: @goofball.user_id }
    assert_redirected_to goofball_path(assigns(:goofball))
  end

  test "should destroy goofball" do
    assert_difference('Goofball.count', -1) do
      delete :destroy, id: @goofball
    end

    assert_redirected_to goofballs_path
  end
end
