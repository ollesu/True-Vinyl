class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @vinyls = Vinyl.limit(6).order(created_at: :desc)

  end
end
