module ShowsHelper
  
  def date_helper shows
    @upcoming_shows = Array.new
    @past_shows = Array.new
    
    shows.each do |show|
      if show[:date] > Date.today
        @upcoming_shows.push(show)
      else
        @past_shows.push(show) 
      end
    end  
  end


end