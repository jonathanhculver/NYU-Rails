class PicturesController < ApplicationController
  def index
    @listing = Listing.find(params[:listing_id])
    @pictures = @listing.pictures.all
  end

  def new
    @listing = Listing.find(params[:listing_id])
    @picture = Picture.new
  end

  def create
  end

  def edit
    @listing = Listing.find(params[:listing_id])
    @picture = @listing.pictures.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
