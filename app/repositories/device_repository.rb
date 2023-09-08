module DeviceRepository
    extend ActiveSupport::Concern
    extend self

    def all
        Device.all
    end

    def find(id)
        @device = Device.find(id)
    end
    
    def destroy
        @device.destroy
    end 
    
    def create(device_params)
        @device = Device.new(device_params)
    
        if @device.save
            return @device
        end
        
        @device.errors
    end 

    
    def get_all_by_environment(environment_id)
        devices = Device.where('environment_id = ?', environment_id.to_i)
        if devices.empty?
            raise ActiveRecord::RecordNotFound.new("Nenhum dispositivo encontrado para o environment com ID #{environment_id}")
        end
        devices   
    end

    def get_all_by_location(location_id)
        devices = Device.joins(environment: :location).where('location_id = ?', location_id.to_i)
        if devices.empty?
            raise ActiveRecord::RecordNotFound.new("Nenhum dispositivo encontrado para o local com ID #{location_id}")
        end
        devices
    end

    def get_active_devices_by_environment(id)
        Device.where(environment_id: params[:id]).where(active: true)
    end

    def destroy_non_active_devices_by_environment(id)
        Device.where(environment_id: params[:id]).where(active: false).destroy_all
    end


    def turn_on(device)
        state = device.current_state
        state.turn_on(device)
    end

    def turn_off(device)
        state = device.current_state
        state.turn_off(device)
    end

    def activate(device)
        state = device.current_state
        state.activate(device)
    end

    def deactivate(device)
        state = device.current_state
        state.deactivate(device)
    end


    private

    def get_device(device_id)
        Device.find(device_id)
    end


end
