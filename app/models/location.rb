class Location < ApplicationRecord
  validates :description, :client_id, presence: true
  belongs_to :client
end
