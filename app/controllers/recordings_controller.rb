class RecordingsController < ApplicationController
  def index
    @recordings = Recording.all
  end

  def new
    @recording = Recording.new
  end

  def create
    @recording = Recording.new(params[:recording])
    @recording.save

    flash.notice = "Your new recording, #{@recording.name}, has been saved!"
    redirect_to recording_path(@recording)
  end

  def show
    @recording = Recording.find(params[:id])
  end
end
