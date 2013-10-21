require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { arrival_date: @user.arrival_date, departure_date: @user.departure_date, email: @user.email, fbid: @user.fbid, host: @user.host, name: @user.name, where_from: @user.where_from, why_in_sf: @user.why_in_sf }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { arrival_date: @user.arrival_date, departure_date: @user.departure_date, email: @user.email, fbid: @user.fbid, host: @user.host, name: @user.name, where_from: @user.where_from, why_in_sf: @user.why_in_sf }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
