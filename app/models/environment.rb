class Environment < ApplicationRecord
  belongs_to :location
  validates :description, presence: true

end
