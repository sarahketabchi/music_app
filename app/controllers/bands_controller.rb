class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(:name => params[:name])
    @band.save

    flash.notice = "Your band has been added to the population of baby bands ;)"
    redirect_to bands_url
  end

  def show
    @band = Band.find(params[:id])
    @artists = @band.artists
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update_attributes(params[:band])

    flash.notice = "Band name updated!"
    redirect_to band_url(@band)
  end

end

