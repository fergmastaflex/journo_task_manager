class HomeController < ApplicationController
  def index
    @pitches = Pitch.all
    @weekly_pitches = Pitch.by_recent_week.all
  end
end
