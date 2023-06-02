class Flat < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many_attached :photos
  geocoded_by :address
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :city, presence: true
  validates :country, presence: true
  validates :address, presence: true
end
