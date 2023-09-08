module States
  class OffState
      def turn_on(device)
      end
    
      def turn_off(device)
      end
    
      def activate(device)
        device.update(active: true)
      end
    
      def deactivate(device)
      end
  end
end
  