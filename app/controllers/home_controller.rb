class HomeController < ApplicationController
  def index
    @pois = PointOfInterest.all
  end
end
