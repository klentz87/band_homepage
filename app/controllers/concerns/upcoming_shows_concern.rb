module UpcomingAndPastShowsConcern 
  extend ActiveSupport::Concern

  included do
    before_action :determine_past_and_upcoming_shows
  end

  def determine_past_and_upcoming_shows
    @upcoming_shows = Array.new
    @past_shows = Array.new
    Show.all.order("date DESC").each do |show|
      if show[:date] >= Date.today
        @upcoming_shows.push(show)
      else
        @past_shows.push(show) 
      end
    end
  end


end  