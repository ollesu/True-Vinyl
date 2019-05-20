class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @vinyls = Vinyl.all
  end
end
