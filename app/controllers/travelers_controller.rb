class TravelersController < ApplicationController
    def login

    end

    def authenticate
       # ?
    end

    def show
        @traveler = Traveler.find(params[:id])
    end

    def traveler_params
        params.require(:user).permit(:name, :username, :password)
    end
end