class ListingsController < ApplicationController
    def index
        listings = Listing.all
        if listings
            render json: listings, status: :ok
        else
            render json: {error: "Could not fetch listings."}, status: :not_found
        end
    end

    def show
        listing = Listing.find_by(id: params[:id])
        if listing
            render json: listing, status: :ok
        else
            render json: {error: "Could not find listing with id of #{params[:id]}."}, status: :not_found
        end
    end
end
