class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @searches = Search.all
    respond_with(@searches)
  end

  def show

    @searchset = @search.reviews

    if !@search.manufacturer_id.blank?
      @carmake= Manufacturer.find(@search.manufacturer_id)

    end

    @avg_ease = @searchset.average(:stars_ease)
    @avg_quality = @searchset.average(:stars_quality)
    @avg_price = @searchset.average(:stars_price)
    @avg_attention = @searchset.average(:stars_attention)
    @avg_ontime = @searchset.average(:stars_ontime)
    sumrate= (@avg_ease + @avg_quality + @avg_price + @avg_ontime + @avg_attention)
    @avgrate= sumrate / 5.0

    @stars_ease_tag = @search.star1(@avg_ease)
    @stars_quality_tag = @search.star1(@avg_quality)
    @stars_price_tag = @search.star1(@avg_price)
    @stars_attention_tag = @search.star1(@avg_attention)
    @stars_ontime_tag = @search.star1(@avg_ontime)
    @stars_summary_tag = @search.star1(@avgrate)


    respond_with(@search)
  end

  def new
    firstreview = Review.minimum(:service_date)
    lastreview = Review.maximum(:service_date)
    @firstyear = firstreview.year
    @lastyear = lastreview.year
    firstcaryear = Review.minimum(:car_year)
    lastcaryear = Review.maximum(:car_year)
    @firstcaryr = firstcaryear.year
    @lastcaryr = lastcaryear.year


    @search = Search.new
    respond_with(@search)
  end

  def edit
  end

  def create
    @search = Search.new(search_params)


    puts '======================newsearchparams================================='

    puts search_params


    @search.save
    respond_with(@search)
  end

  def update
    @search.update(search_params)
    respond_with(@search)
  end

  def destroy
    @search.destroy
    respond_with(@search)
  end

  private
  def set_search
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:search_start, :search_end,
                                   :startyear, :startmonth, :endyear, :endmonth, :manufacturer_id, :car_model, :car_year, :recommended, :search_text)
  end
end
