class CarsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]
  
    def index
      @cars = Car.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @cars }
      end
    end
  
    def show
      @car = Car.find(params[:id])
      gon.cars = @cars
  
      
      respond_to do |format|
        format.html
        format.json { render json: @car }
      end
    end
  
    def new
      @car = Car.new
    end
  
    def edit
      @car = Car.find(params[:id])
    end
  
    def create
        @car = Car.new(car_params)
  
      @car.user = current_user
  
      if @car.save
        redirect_to @car
      else
        render 'new'
      end
    end
  
    def update
      @car = Car.find(params[:id])
  
      if @car.update(article_params)
        redirect_to @car
      else
        render 'edit'
      end
    end
  
    def destroy
      @car = Car.find(params[:id])
      @car.destroy
  
      redirect_to cars_path
    end
  
    private
      def car_params
        params.require(:car).permit(:make).permit(color)
      end
  end
  
  