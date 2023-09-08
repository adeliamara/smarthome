module LocationRepository
  extend ActiveSupport::Concern
  extend self

  include DeviceRepository


  def all
    Location.all
  end

  def find(id)
    @location = Location.find(id)
  end

  def destroy
    @location.destroy
  end 

  def create(location_params)
    @location = Location.new(location_params)

    if @location.save
      return @location
    end
    
    @location.errors
  
  end 

  def deactivate_all_devices(location_id)
    @devices = get_all_devices(location_id)

    @devices.each do |device|
        DeviceRepository.deactivate(device)
    end
  end

  def activate_all_devices(location_id)
    @devices = get_all_devices(location_id)

    @devices.each do |device|
        DeviceRepository.activate(device)
    end
  end

  def turn_on_all_devices(location_id)
    @devices = get_all_devices(location_id)

    @devices.each do |device|
        DeviceRepository.turn_on(device)
    end
  end

  def turn_off_all_devices(location_id)
    @devices = get_all_devices(location_id)

    @devices.each do |device|
        DeviceRepository.turn_off(device)
    end
  end

  def get_all_devices(id)
    DeviceRepository.get_all_by_location(id)
  end
  
  private

  def set_location
    @location = Location.find(params[:location_id])
  end
  
  
end
