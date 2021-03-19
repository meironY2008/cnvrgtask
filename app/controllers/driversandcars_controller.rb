class DriversandcarsController < ApplicationController
  before_action :set_driversandcar, only: %i[ edit update destroy ]

  # GET /driversandcars or /driversandcars.json
  def index
    @driversandcars = Driversandcar.all
  end

  # GET /driversandcars/1 or /driversandcars/1.json
  def show
    
  end

  # GET /driversandcars/new
  def new
    @driversandcar = Driversandcar.new
  end

  # GET /driversandcars/1/edit
  def edit
    @driversandcar = Driversandcar.find(params[:id])
    
  end

  def getdrivercar
    if params[:driver_id].in? [nil,0]
      @driversandcar = Driversandcar.select('driversandcar.created_at','cars.title','driversandcar.car_id')
        .joins(:cars)
        .where(['driversandcar.driver_id =?', params[:driver_id]])
      render json: { status: 'SUCCSES', message: "load cars of driver", data: @driversandcar}, status: :ok
    else
      if params[:car_id].in? [nil,0]
        @driversandcar = Driversandcar.select('driversandcar.created_at','drivers.name','driversandcar.driver_id')
        .joins(:drivers)
        .where(['driversandcar.car_id =?', params[:car_id]])
       render json: { status: 'SUCCSES', message: "load drivers of car", data: @driversandcar}, status: :ok
      end
    end
  end

  # POST /driversandcars or /driversandcars.json
  def create
    @driversandcar = Driversandcar.new(driversandcar_params)

    respond_to do |format|
      if @driversandcar.save
        format.html { redirect_to @driversandcar, notice: "Driversandcar was successfully created." }
        format.json { render :index, status: :created, location: @driversandcar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @driversandcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driversandcars/1 or /driversandcars/1.json
  def update
    @driversandcar = Driversandcar.find(params[:id])
    respond_to do |format|
      if @driversandcar.update(driversandcar_params)
        format.html { redirect_to @driversandcar, notice: "Driversandcar was successfully updated." }
        format.json { render :index, status: :ok, location: @driversandcar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @driversandcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driversandcars/1 or /driversandcars/1.json
  def destroy
    @driversandcar.destroy
    respond_to do |format|
      format.html { redirect_to driversandcars_url, notice: "Driversandcar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driversandcar
      # if params[:id] != '0'
      # @driversandcar = Driversandcar.find(params[:id])
      # else
      #   if params[:driver_id].in? [nil,0]
      #     @driversandcar = Driversandcar.select('driversandcar.created_at','cars.title','driversandcar.car_id')
      #       .joins( :cars)
      #       .where('driversandcar.driver_id =?', params[:driver_id])
      #   else
      #     if params[:car_id].in? [nil,0]
      #       @driversandcar = Driversandcar.select('driversandcar.created_at','drivers.name','driversandcar.driver_id')
      #      .joins(:drivers)
      #      .where('driversandcar.car_id =?', params[:car_id])
      #     end
      #   end
      # end
    end

    # Only allow a list of trusted parameters through.
    def driversandcar_params
      params.require(:driversandcar).permit(:car_id, :driver_id)
    end

    # def get_driver_car_params
    #   params.require(:driversandcar).permit(:driver_id)
    # end
    
    # def get_car_driver_params
    #   params.require(:driversandcar).permit(:car_id)
    # end
end
