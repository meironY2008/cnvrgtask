class GetdrivercarController < ApplicationController

    def index
      if params[:driver_id].present?
        @driversandcar = Driversandcar.select('driversandcars.created_at as created,cars.title as name,driversandcars.car_id as id')
          .joins(:car)
          .where(['driversandcars.driver_id =?', params[:driver_id]])
        # render json: { status: 'SUCCSES', message: "load cars of driver", data: @driversandcar}, status: :ok
      elsif params[:car_id].present?
          @driversandcar = Driversandcar.select('driversandcars.created_at as created,drivers.name as name,driversandcars.driver_id as id')
          .joins(:driver)
          .where(['driversandcars.car_id =?', params[:car_id]])
        #  render json: { status: 'SUCCSES', message: "load drivers of car", data: @driversandcar}, status: :ok
      else
        @driversandcar = []
      end
    end
  end
  