class ListingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @listings = @user.listings.all
  end

  def new
    @user = User.find(params[:user_id])
    @listing = Listing.new(:user => @user)
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def destroy
  end

  private

    def listing_params
      params.require(:listing).permit(:title, :description, :price)
    end

end
