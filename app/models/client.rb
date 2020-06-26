class Client < ApplicationRecord
  has_many :sales

  scope :descendent, -> { order(created_at: :desc) }
end
