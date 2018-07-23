class SlotsController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]
  
    def index
      @slots = Slot.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @slots }
      end
    end
  
    def show
      @slot = Slot.find(params[:id])
      gon.slots = @slots
  
      
      respond_to do |format|
        format.html
        format.json { render json: @slot }
      end
    end
  
    def new
      @slot = Slot.new
    end
  
    def edit
      @slot = Slot.find(params[:id])
    end
  
    def create
        @slot = Slot.new(car_params)
  
      @slot.user = current_user
  
      if @slot.save
        redirect_to @slot
      else
        render 'new'
      end
    end
  
    def update
      @slot = Slot.find(params[:id])
  
      if @slot.update(article_params)
        redirect_to @slot
      else
        render 'edit'
      end
    end
  
    def destroy
      @slot = Slot.find(params[:id])
      @slot.destroy
  
      redirect_to slots_path
    end
  
    private
      def slot_params
        params.require(:slot).permit(:number)
      end
  end
  
  