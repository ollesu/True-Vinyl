class Purchase < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user, :foreign_key => 'buyer_id'
end
