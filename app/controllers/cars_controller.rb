class CarsController < ApplicationController
  def new
    @car = Car.new
    @user = current_user
  end

  def create
    @car = Car.new(car_params)
    @car.state = "available"
    @car.user = current_user

    if @car.save
      redirect_to car_url(@car)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to cars_path 
  end

  def index
    @cars = Car.all
    @car = Car.new 
    if params[:query].present?
      @cars = Car.global_search(params[:query])
    end

  end

  def show
  end
end


def car_params
  params.require(:car).permit(:name, :price, :state, :maker, :color, :purchased, :user_id  )
end