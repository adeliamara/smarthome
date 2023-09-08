require_relative '../repositories/device_repository'

class DeviceController < ApplicationController
    before_action :set_device, only: %i[ show update destroy activate deactivate turn_off turn_on]

    include DeviceRepository

    # GET /devices
    def index
        @devices = DeviceRepository.all
        render json: @devices
    end

    # GET /devices/1
    def show
        render json: @device
    end
    
    # DELETE /devices/1
    def destroy
      DeviceRepository.destroy
    end

    # POST /devices
    def create
      @device = DeviceRepository.create(device_params)

      if @device.is_a?(Device)
        render json: @device, status: :created
      else
        render json: @device, status: :unprocessable_entity
      end
    end

    # PATCH /device/1/deactive
    def deactivate
      DeviceRepository.deactivate(@device)
      render json: @device
    end

    # PATCH /device/1/activate
    def activate
      DeviceRepository.activate(@device)
      render json: @device
    end

    # PATCH /device/1/turn-off
    def turn_off
      DeviceRepository.turn_off(@device)
      render json: @device
    end

    # PATCH /device/1/turn-on
    def turn_on
      DeviceRepository.turn_on(@device)
      render json: @device
    end
      
    private
        # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = DeviceRepository.find(params[:device_id])
    end
    
    # Only allow a list of trusted parameters through.
    def device_params
      params.require(:device).permit(:description, :on, :online, :active)
    end
         
      
end
