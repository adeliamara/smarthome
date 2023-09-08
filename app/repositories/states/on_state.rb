module States
  class OnState
      def turn_on(device)
        device.update(on: true) unless device.on?
      end
    
      def turn_off(device)
        device.update(on: false) if device.on?
      end
    
      def activate(device)
      end
    
      def deactivate(device)
        device.update(active: false)
      end
  end
end
  