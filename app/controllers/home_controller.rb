class HomeController < ApplicationController

  def index
    @services = Service.all
    @cars = Manufacturer.all
    @siteblurbs = Siteblurb.all
  end

end
