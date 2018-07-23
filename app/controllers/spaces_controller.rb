class SpacesController < ApplicationController

    def new
        @space = Space.new
    end

    def create
        @space = Space.new(space_params)
        @space.save
        @car = Car.find(params[:car_id])
        @car.spaces << @space
        redirect_to spaces_path
    end

    private
    
    def space_params
        params.require(:space).permit(:location)
    end
end 