require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { car_model: @review.car_model, car_year: @review.car_year, manufacturer_id: @review.manufacturer_id, recommended: @review.recommended, review_note: @review.review_note, service_date: @review.service_date, stars_attention: @review.stars_attention, stars_ease: @review.stars_ease, stars_ontime: @review.stars_ontime, stars_price: @review.stars_price, stars_quality: @review.stars_quality, user_id: @review.user_id }
    end

    assert_redirected_to review_path(assigns(:review))
  end

  test "should show review" do
    get :show, id: @review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review
    assert_response :success
  end

  test "should update review" do
    patch :update, id: @review, review: { car_model: @review.car_model, car_year: @review.car_year, manufacturer_id: @review.manufacturer_id, recommended: @review.recommended, review_note: @review.review_note, service_date: @review.service_date, stars_attention: @review.stars_attention, stars_ease: @review.stars_ease, stars_ontime: @review.stars_ontime, stars_price: @review.stars_price, stars_quality: @review.stars_quality, user_id: @review.user_id }
    assert_redirected_to review_path(assigns(:review))
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end

    assert_redirected_to reviews_path
  end
end
