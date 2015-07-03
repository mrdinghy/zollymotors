class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reviews = Review.all
    respond_with(@reviews)
  end

  def display
    @search = Search.new
    @latest_reviews = Review.order('service_date DESC').limit(20)
    @allreviews = Review.all


    @avg_ease = Review.average(:stars_ease)
    @avg_quality = Review.average(:stars_quality)
    @avg_price = Review.average(:stars_price)
    @avg_attention = Review.average(:stars_attention)
    @avg_ontime = Review.average(:stars_ontime)
    sumrate= (@avg_ease + @avg_quality + @avg_price + @avg_ontime + @avg_attention)
    @avgrate= sumrate / 5.0


    @stars_ease_tag = self.showstars(@avg_ease)
    @stars_quality_tag = self.showstars(@avg_quality)
    @stars_price_tag = self.showstars(@avg_price)
    @stars_attention_tag = self.showstars(@avg_attention)
    @stars_ontime_tag = self.showstars(@avg_ontime)
    @stars_summary_tag = self.showstars(@avgrate)


    @makes_count = Review.group("manufacturer_id").select('manufacturer_id, COUNT(*) as vcount')
    #@makes_count = Review.count

    respond_with(@reviews)
  end


  def show
    sumrate= (@review.stars_ease + @review.stars_quality + @review.stars_price + @review.stars_ontime + @review.stars_attention)

    avgrate= sumrate / 5.0

    @stars_ease_tag = self.showstars(@review.stars_ease)
    @stars_quality_tag = self.showstars(@review.stars_quality)
    @stars_price_tag = self.showstars(@review.stars_price)
    @stars_attention_tag = self.showstars(@review.stars_attention)
    @stars_ontime_tag = self.showstars(@review.stars_ontime)
    @stars_summary_tag = self.showstars(avgrate)


    respond_with(@review)
  end

  def new
    @review = Review.new
    respond_with(@review)
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.save
    respond_with(@review)
  end

  def update
    @review.update(review_params)
    respond_with(@review)
  end

  def destroy
    @review.destroy
    respond_with(@review)
  end


  def showstars(rating)
    tag = ''

    if rating < 0.25
      tag1= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 0.25 and rating < 0.75
      tag1= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag1= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag1

    if rating < 1.25
      tag2= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 1.25 and rating < 1.75
      tag2= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag2= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag2

    if rating < 2.25
      tag3= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 2.25 and rating < 2.75
      tag3= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag3= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag3

    if rating < 3.25
      tag4= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 3.25 and rating < 3.75
      tag4= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag4= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag = tag + tag4

    if rating < 4.25
      tag5= '<li><i class="color-green fa fa-star-o"></i></li>'
    elsif rating >= 4.25 and rating < 4.75
      tag5= '<li><i class="color-green fa fa-star-half-o"></i></li>'
    else
      tag5= '<li><i class="color-green fa fa-star"></i></li>'
    end
    tag= tag + tag5
    return tag
  end


  private
  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:user_id, :manufacturer_id, :stars_ease, :stars_quality, :stars_price, :stars_ontime, :stars_attention, :service_date, :review_note, :recommended, :car_model, :car_year)
  end
end
