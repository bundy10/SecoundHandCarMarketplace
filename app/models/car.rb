class Car < ApplicationRecord
  belongs_to :user

  has_many :line_items, dependent: :destroy
  has_many :bookings
end
