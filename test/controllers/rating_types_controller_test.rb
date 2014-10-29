require 'test_helper'

class RatingTypesControllerTest < ActionController::TestCase
  setup do
    @rating_type = rating_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rating_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rating_type" do
    assert_difference('RatingType.count') do
      post :create, rating_type: { name: @rating_type.name, rate_id: @rating_type.rate_id }
    end

    assert_redirected_to rating_type_path(assigns(:rating_type))
  end

  test "should show rating_type" do
    get :show, id: @rating_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rating_type
    assert_response :success
  end

  test "should update rating_type" do
    patch :update, id: @rating_type, rating_type: { name: @rating_type.name, rate_id: @rating_type.rate_id }
    assert_redirected_to rating_type_path(assigns(:rating_type))
  end

  test "should destroy rating_type" do
    assert_difference('RatingType.count', -1) do
      delete :destroy, id: @rating_type
    end

    assert_redirected_to rating_types_path
  end
end
