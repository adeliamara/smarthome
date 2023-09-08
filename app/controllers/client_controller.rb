require_relative '../repositories/client_repository'

class ClientController < ApplicationController
    before_action :set_client, only: %i[ show update destroy ]

    include ClientRepository

    # GET /Clients
    def index
        @clients = ClientRepository.all
        render json: @clients
    end

    # GET /Clients/1
    def show
        render json: @client
    end
    
    # DELETE /Clients/1
    def destroy
      ClientRepository.destroy
    end

    # POST /Clients
    def create
      @client = ClientRepository.create(client_params)

      if @client.is_a?(Client)
        render json: @client, status: :created
      else
        render json: @client, status: :unprocessable_entity
      end
    end
  
      
    private
        # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = ClientRepository.find(params[:Client_id])
    end
    
    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:name)
    end
         
      
end
