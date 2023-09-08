require_relative '../repositories/environment_repository'

class EnvironmentController < ApplicationController
    before_action :set_environment, only: %i[ show update destroy ]

    include EnvironmentRepository

    # GET /environments
    def index
        @environments = EnvironmentRepository.all
        render json: @environments
    end

    # GET /environments/1
    def show
        render json: @environment
    end
    
    # DELETE /environments/1
    def destroy
      EnvironmentRepository.destroy
    end

     # POST /environments
     def create
        @environment = EnvironmentRepository.create(environment_params)
  
        if @environment.is_a?(Environment)
          render json: @environment, status: :created
        else
          render json: @environment, status: :unprocessable_entity
        end
      end

    # PATCH /environment/1/deactivate-devices
    def deactivate_all_devices
      EnvironmentRepository.deactivate_all_devices(params[:environment_id])
    end

    # PATCH /environment/1/activate-devices
    def activate_all_devices
      EnvironmentRepository.activate_all_devices(params[:environment_id])
    end

    # PATCH /environment/1/turn-off-devices
    def turn_off_all_devices
      EnvironmentRepository.turn_off_all_devices(params[:environment_id])
    end

    # PATCH /environment/1/turn-on-devices
    def turn_on_all_devices
      EnvironmentRepository.turn_on_all_devices(params[:environment_id])
    end

    # GET /environment/1/device
    def get_all_devices
      @devices = EnvironmentRepository.get_all_devices(params[:environment_id])
      render json: @devices
    end
      
    private
        # Use callbacks to share common setup or constraints between actions.
    def set_environment
      @environment = EnvironmentRepository.find(params[:environment_id])
    end
    
    # Only allow a list of trusted parameters through.
    def environment_params
      params.require(:environment).permit(:description, :location_id)
    end       
      
end
