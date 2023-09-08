module EnvironmentRepository
    extend ActiveSupport::Concern
    extend self

    include DeviceRepository

    def all
        Environment.all
    end
    
    def find(id)
        Environment.find(id)
    end
    
    def destroy(id)
        @environment_id.destroy
    end 
    
    def deactivate_all_devices(environment_id)
        @devices = get_all_devices(environment_id)
    
        @devices.each do |device|
            DeviceRepository.deactivate(device)
        end
    end      
    
    def activate_all_devices(environment_id)
        @devices = get_all_devices(environment_id)
    
        @devices.each do |device|
            DeviceRepository.activate(device)
        end
    end
    
    def turn_on_all_devices(environment_id)
        @devices = get_all_devices(environment_id)
    
        @devices.each do |device|
            DeviceRepository.turn_on(device)
        end
    end
    
      def turn_off_all_devices(environment_id)
        @devices = get_all_devices(environment_id)
    
        @devices.each do |device|
            DeviceRepository.turn_off(device)
        end
      end
    
      def get_all_devices(id)
        DeviceRepository.get_all_by_environment(id)
      end

    def destroy
        active_devices = get_active_devices_by_enviromment

        unless active_devices
            destroy_non_active_devices_by_enviromment
        end
    end 

    def create(environment_params)
        @environment = Environment.new(environment_params)
    
        if @environment.save
          return @environment
        end
        
        @environment.errors
      end 
    
    private

    def set_environment
      @environment = Environment.find(params[:environment_id])
    end

end
