class ShowsController < ApplicationController
  before_action :set_shows, only: [:show, :edit, :update, :destroy]
  include UpcomingAndPastShowsConcern 

  # GET /shows
  def index
  end

  # GET /shows/new
  def new
    @show = Show.new
  end

  # GET /shows/edit
  def edit
  end

  #POST /shows
  def create
    @show = Show.new(shows_params)

    respond_to do |format|
      if @show.save 
        format.html { redirect_to shows_path, notice: 'Show date added' }
      else 
        format.html { render :new }
      end
    end
  end


  # PATCH/PUT /shows/1
  def update
    respond_to do |format|
      if @show.update(shows_params) 
        format.html { redirect_to shows_path, notice: 'Show dates have been updated' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /shows/1
  def destroy 
    @show.destroy

    respond_to do |format|
      format.html { redirect_to shows_url, notice: 'Show date was removed' }
    end
  end

  private

  def shows_params
    params.require(:show).permit( 
      :date, 
      :city, 
      :venue, 
      :info 
    ) 
  end

  def set_shows
    @show = Show.find(params[:id])
  end
end
