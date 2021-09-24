class Offer < ApplicationRecord
  belongs_to :allotment, :coupon
  has_many :purchases, dependent: :destroy
  has_one_attached :photo
end
