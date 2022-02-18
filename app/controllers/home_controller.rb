class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :about]

  def index
  end

  def about
    @about_app = "About this Application"
  end
end
