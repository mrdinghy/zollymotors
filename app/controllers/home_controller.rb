class HomeController < ApplicationController

  def index
    @services = Service.all
    @siteblurbs = Siteblurb.all
  end

end
