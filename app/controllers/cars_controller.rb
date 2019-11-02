class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :update, :destroy]

  def new
    @car = current_user.cars.new
  end

  def edit; end

  def create
    @car = current_user.cars.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to profile_path, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_car
    @car = current_user.cars.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:size, :brand, :model, :color, :user_id)
  end
end
