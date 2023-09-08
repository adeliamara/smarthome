require_relative '../repositories/location_repository'

class LocationController < ApplicationController
    before_action :set_location, only: %i[ show update destroy ]

    include LocationRepository

    # GET /locations
    def index
        @locations = LocationRepository.all
        render json: @locations
    end

    # GET /locations/1
    def show
        render json: @location
    end
    
    # DELETE /locations/1
    def destroy
      LocationRepository.destroy
    end

    # POST /locations
    def create
      @location = LocationRepository.create(location_params)

      if @location.is_a?(Location)
        render json: @location, status: :created
      else
        render json: @location, status: :unprocessable_entity
      end
    end
  

    # PATCH /location/1/deactivate-devices
    def deactivate_all_devices
      LocationRepository.deactivate_all_devices(params[:location_id])
    end

    # PATCH /location/1/activate-devices
    def activate_all_devices
      LocationRepository.activate_all_devices(params[:location_id])
    end

    # PATCH /location/1/turn-off-devices
    def turn_off_all_devices
      LocationRepository.turn_off_all_devices(params[:location_id])
    end

    # PATCH /location/1/turn-on-devices
    def turn_on_all_devices
      LocationRepository.turn_on_all_devices(params[:location_id])
    end

    # GET /location/1/device
    def get_all_devices
      @devices = LocationRepository.get_all_devices(params[:location_id])
      render json: @devices
    end
      
    private
        # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = LocationRepository.find(params[:location_id])
    end
    
    # Only allow a list of trusted parameters through.
    def location_params
      params.require(:location).permit(:description, :client_id)
    end
         
      
end
