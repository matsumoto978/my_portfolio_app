class Gym < ApplicationRecord
  validates :gyms, presence: true
  validates :area, presence: true
  validates :google_map_url, presence: true
end
