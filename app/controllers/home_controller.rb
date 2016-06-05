class HomeController < ApplicationController
  before_action :set_degrees

  def index
    @home_index = true
  end

  private
    def set_degrees
      @degrees = Degree.all
    end

end
