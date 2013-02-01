class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
    @bands = Band.all
  end

  def create
    @artist = Artist.new(
      :name => params[:name],
      :band_id => params[:band_id])

    if Band.find_by_id(@artist.band_id)
      @artist.save
      redirect_to artist_path(@artist)
    else
      flash.notice = "Band ##{@artist.band_id} doesn't exist :("
      redirect_to new_artist_path
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    if Band.find_by_id(params[:artist][:band_id]) != nil
      @artist.update_attributes(params[:artist])
      flash.notice = "Artist info has been updated!"
      redirect_to artist_url(@artist)
    else
      flash.notice = "Try again."
      redirect_to edit_artist_url(@artist)
    end
  end

  def destroy
    Artist.find(params[:id]).destroy

    flash.notice = "The artist was successfully destroyed >:)"
    redirect_to artists_url
  end
end
