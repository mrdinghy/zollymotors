require 'test_helper'

class SiteblurbsControllerTest < ActionController::TestCase
  setup do
    @siteblurb = siteblurbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siteblurbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siteblurb" do
    assert_difference('Siteblurb.count') do
      post :create, siteblurb: { blurb: @siteblurb.blurb, name: @siteblurb.name }
    end

    assert_redirected_to siteblurb_path(assigns(:siteblurb))
  end

  test "should show siteblurb" do
    get :show, id: @siteblurb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siteblurb
    assert_response :success
  end

  test "should update siteblurb" do
    patch :update, id: @siteblurb, siteblurb: { blurb: @siteblurb.blurb, name: @siteblurb.name }
    assert_redirected_to siteblurb_path(assigns(:siteblurb))
  end

  test "should destroy siteblurb" do
    assert_difference('Siteblurb.count', -1) do
      delete :destroy, id: @siteblurb
    end

    assert_redirected_to siteblurbs_path
  end
end
