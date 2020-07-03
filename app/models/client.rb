class Client < ApplicationRecord
  has_many :sales

  validates :total_name, presence: true

  scope :descendent, -> { order(created_at: :desc) }
end
