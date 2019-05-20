class Vinyl < ApplicationRecord
  belongs_to :seller, :foreign_key => 'seller_id', class_name: "User"
  has_one :purchase
  mount_uploader :photo, PhotoUploader
end
