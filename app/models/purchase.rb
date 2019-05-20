class Purchase < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user, :foreign_key => 'buyer_id', class_name: "User"
  has_one :review
  validates :name, presence: true
  validates :house_number, presence: true
  validates :street_name, presence: true
  validates :post_code, presence: true
  validates :city, presence: true
  validates :card_holder, presence: true
  validates :card_number, presence: true, format: { with: /\d{4}\s?\d{4}\s?\d{4}\s?\d{4}/ }
  validates :expiry_date, presence: true
  validates :security_code, presence: true
end
