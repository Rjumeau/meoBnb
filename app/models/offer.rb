class Offer < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  validates :name, presence: true
end