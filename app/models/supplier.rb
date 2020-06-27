class Supplier < ApplicationRecord
  has_many :products
  has_many :warehouse_records

  scope :descendent, -> { order(created_at: :desc) }
end
