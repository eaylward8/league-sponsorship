class League < ApplicationRecord
  validates :name, :lat, :lng, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  # TODO: validation for lat/lng values

  def location
    [lat, lng]
  end
end
