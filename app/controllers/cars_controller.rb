class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
        @spaces = @car.model
    end

    def new
        @car = Car.new
    end

    def create
        @car= Car.new(car_params)
        @car.save
        redirect_to cars_path
    end

    def edit
    end

    def update
    end

    def delete
    end 

    private
    def car_params
        params.require(:car).permit(:model, :description)
    end
end 