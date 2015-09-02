require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  setup do
    @search = searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search" do
    assert_difference('Search.count') do
      post :create, search : {car_model : @search.car_model, car_year : @search.car_year, manufacturer_id : @search.manufacturer_id, recommended : @search.recommended, search_end : @search.search_end, search_start : @search.search_start, search_text : @search.search_text}
    end

    assert_redirected_to search_path(assigns(:search))
  end

  test "should show search" do
    get :show, id : @search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id : @search
    assert_response :success
  end

  test "should update search" do
    patch :update, id : @search, search : {car_model : @search.car_model, car_year : @search.car_year, manufacturer_id : @search.manufacturer_id, recommended : @search.recommended, search_end : @search.search_end, search_start : @search.search_start, search_text : @search.search_text}
    assert_redirected_to search_path(assigns(:search))
  end

  test "should destroy search" do
    assert_difference('Search.count', -1) do
      delete :destroy, id : @search
    end

    assert_redirected_to searches_path
  end
end
