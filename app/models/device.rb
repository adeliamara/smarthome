class Device < ApplicationRecord
  belongs_to :environment

  def current_state
    if active
      States::OnState.new
    else
      States::OffState.new
    end
  end
end
