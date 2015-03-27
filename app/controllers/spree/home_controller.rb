class Spree::HomeController < ApplicationController
  def index
    p User.first
    raise
  end

end
