class HomeController < ApplicationController
  # For the sake of testing Heroku
  def index
    @images = ["CRC1.jpg", "CRC2.jpg", "CRC3.jpg"]
  end
end
