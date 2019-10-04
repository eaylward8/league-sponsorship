class League < ApplicationRecord
  validates :name, :lat_long, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
end
