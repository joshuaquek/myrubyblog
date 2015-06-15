require 'test_helper'

class WaterCupsControllerTest < ActionController::TestCase
  setup do
    @water_cup = water_cups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:water_cups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create water_cup" do
    assert_difference('WaterCup.count') do
      post :create, water_cup: { age: @water_cup.age, condition: @water_cup.condition, name: @water_cup.name }
    end

    assert_redirected_to water_cup_path(assigns(:water_cup))
  end

  test "should show water_cup" do
    get :show, id: @water_cup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @water_cup
    assert_response :success
  end

  test "should update water_cup" do
    patch :update, id: @water_cup, water_cup: { age: @water_cup.age, condition: @water_cup.condition, name: @water_cup.name }
    assert_redirected_to water_cup_path(assigns(:water_cup))
  end

  test "should destroy water_cup" do
    assert_difference('WaterCup.count', -1) do
      delete :destroy, id: @water_cup
    end

    assert_redirected_to water_cups_path
  end
end
