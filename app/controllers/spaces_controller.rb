class SpacesController < ApplicationController

    before_action :authenticate_user!

    def index
        # @spaces = Space.all
        @car = Car.find(params[:car_id])
        
    end

    def new 
        @cars = Car.all
    
    end

    def create
        @space = Space.new(space_params)
        
        @space.save
        redirect_to spaces_path
    
    end

    def show
        @space =Space.find(params[:id])
    end
    
    def edit
    
    end

    def put
    
    end

    def space_params
        params.require(:space).permit(:name, :location, :car_ids => [])
    end

end