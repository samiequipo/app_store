class Product < ApplicationRecord
  belongs_to :category, optional: true 
  belongs_to :supplier, optional: true 
  has_many :warehouse_records
  
  mount_uploader :image, PhotoProductUploader

end
