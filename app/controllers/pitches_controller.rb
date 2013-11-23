class PitchesController < ApplicationController
  before_filter :find_pitch, only: [:show, :edit, :update, :destroy]
  def index
    @pitches = Pitch.all
  end

  def show

  end

  def edit

  end

  def new
    @pitch = Pitch.new
    @pitch.sources.build
  end

  def create
    @pitch = Pitch.new(params[:pitch])
    if @pitch.save
      redirect_to @pitch, notice: 'Your pitch was created'
    else
      render action: 'new'
    end
  end

  def update
    if @pitch.update_attributes(params[:pitch])
      redirect_to @pitch, notice: 'Your pitch was updated'
    else
      render action: 'edit'
    end
  end

  def destroy
    @pitch.destroy
    redirect_to root_path, notice: 'Your post was deleted'
  end

private

  def find_pitch
    @pitch = Pitch.find(params[:id])
  end

end