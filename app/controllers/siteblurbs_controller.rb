class SiteblurbsController < ApplicationController
  before_action :set_siteblurb, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @siteblurbs = Siteblurb.all
    respond_with(@siteblurbs)
  end

  def show
    respond_with(@siteblurb)
  end

  def new
    @siteblurb = Siteblurb.new
    respond_with(@siteblurb)
  end

  def edit
  end

  def create
    @siteblurb = Siteblurb.new(siteblurb_params)
    @siteblurb.save
    respond_with(@siteblurb)
  end

  def update
    @siteblurb.update(siteblurb_params)
    respond_with(@siteblurb)
  end

  def destroy
    @siteblurb.destroy
    respond_with(@siteblurb)
  end

  private
    def set_siteblurb
      @siteblurb = Siteblurb.find(params[:id])
    end

    def siteblurb_params
      params.require(:siteblurb).permit(:name, :blurb)
    end
end
