class HomeController < ApplicationController

  def index
    @siteblurbs = Siteblurb.all
  end

end
