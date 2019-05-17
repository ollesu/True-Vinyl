class Vinyl < ApplicationRecord
  belongs_to :seller, :foreign_key => 'seller_id', class_name: "User"
  mount_uploader :photo, PhotoUploader
end
