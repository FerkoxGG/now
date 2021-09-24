class Coupon < ApplicationRecord
  has_many :offers, dependent: :destroy
end
