module ClientRepository
    extend ActiveSupport::Concern
    extend self
  


    def all
      Client.all
    end
  
    def find(id)
      @client = Client.find(id)
    end
  
    def destroy
      @client.destroy
    end 
  
    def create(client_params)
      @client = Client.new(client_params)
  
      if @client.save
        return @client
      end
      
      @client.errors
    
    end 
  
    private
  
    def set_client
      @client = Client.find(params[:client_id])
    end
    
    
  end
  