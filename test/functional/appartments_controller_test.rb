require 'test_helper'

class AppartmentsControllerTest < ActionController::TestCase
  setup do
    @appartment = appartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appartment" do
    assert_difference('Appartment.count') do
      post :create, :appartment => @appartment.attributes
    end

    assert_redirected_to appartment_path(assigns(:appartment))
  end

  test "should show appartment" do
    get :show, :id => @appartment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @appartment.to_param
    assert_response :success
  end

  test "should update appartment" do
    put :update, :id => @appartment.to_param, :appartment => @appartment.attributes
    assert_redirected_to appartment_path(assigns(:appartment))
  end

  test "should destroy appartment" do
    assert_difference('Appartment.count', -1) do
      delete :destroy, :id => @appartment.to_param
    end

    assert_redirected_to appartments_path
  end
end
