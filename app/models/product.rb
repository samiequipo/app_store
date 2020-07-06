class Product < ApplicationRecord
  belongs_to :category, optional: true 
  belongs_to :supplier
  has_many :warehouse_records
  
  mount_uploader :image, PhotoProductUploader

end
