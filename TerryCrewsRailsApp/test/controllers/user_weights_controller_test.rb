require 'test_helper'

class UserWeightsControllerTest < ActionController::TestCase
  setup do
    @user_weight = user_weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_weight" do
    assert_difference('UserWeight.count') do
      post :create, user_weight: { weight: @user_weight.weight }
    end

    assert_redirected_to user_weight_path(assigns(:user_weight))
  end

  test "should show user_weight" do
    get :show, id: @user_weight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_weight
    assert_response :success
  end

  test "should update user_weight" do
    patch :update, id: @user_weight, user_weight: { weight: @user_weight.weight }
    assert_redirected_to user_weight_path(assigns(:user_weight))
  end

  test "should destroy user_weight" do
    assert_difference('UserWeight.count', -1) do
      delete :destroy, id: @user_weight
    end

    assert_redirected_to user_weights_path
  end
end
