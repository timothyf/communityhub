class HomeController < ApplicationController

  def index
    @communities = Community.all
    @groups = Group.all
    @events = Event.all 
  end

end
