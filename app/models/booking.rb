class Booking < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  belongs_to :customer, class_name: "User", foreign_key: "customer_id"
  validates :start_time, presence: true
  validates :end_time, presence: true
end
