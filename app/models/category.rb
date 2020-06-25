class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, length: {minimum:11, maximum:255}

  has_many :products

  scope :descendent, -> { order(created_at: :desc) }
end
