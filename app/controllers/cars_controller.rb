class CarsController < ApplicationController

    before_action :authenticate_user!

    def index
        @cars = Car.where(user_id: current_user.id)
        
    end

    def new 
        @spaces = Space.all
    
    end

    def create
        @car = Car.new(car_params)

        @car.user = current_user
        
        if @car.save
        redirect_to cars_path
        else
          render 'new'
        end 
    
    end

    def show
        @car =Car.find(params[:id])
    end
    
    def edit
    
    end

    def put
    
    end

    def car_params
        params.require(:car).permit(:name, :description, :user_id, :space_ids => [])
    end

end