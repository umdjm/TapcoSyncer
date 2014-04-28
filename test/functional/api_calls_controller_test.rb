require 'test_helper'

class ApiCallsControllerTest < ActionController::TestCase
  setup do
    @api_call = api_calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_call" do
    assert_difference('ApiCall.count') do
      post :create, api_call: { call_time: @api_call.call_time, url: @api_call.url }
    end

    assert_redirected_to api_call_path(assigns(:api_call))
  end

  test "should show api_call" do
    get :show, id: @api_call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_call
    assert_response :success
  end

  test "should update api_call" do
    put :update, id: @api_call, api_call: { call_time: @api_call.call_time, url: @api_call.url }
    assert_redirected_to api_call_path(assigns(:api_call))
  end

  test "should destroy api_call" do
    assert_difference('ApiCall.count', -1) do
      delete :destroy, id: @api_call
    end

    assert_redirected_to api_calls_path
  end
end
