class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @manufacturers = Manufacturer.all
    respond_with(@manufacturers)
  end

  def show
    respond_with(@manufacturer)
  end

  def new
    @manufacturer = Manufacturer.new
    respond_with(@manufacturer)
  end

  def edit
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    @manufacturer.save
    respond_with(@manufacturer)
  end

  def update
    @manufacturer.update(manufacturer_params)
    respond_with(@manufacturer)
  end

  def destroy
    @manufacturer.destroy
    respond_with(@manufacturer)
  end

  private
    def set_manufacturer
      @manufacturer = Manufacturer.find(params[:id])
    end

    def manufacturer_params
      params[:manufacturer]
    end
end
