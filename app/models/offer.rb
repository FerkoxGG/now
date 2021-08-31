class Offer < ApplicationRecord
  belongs_to :allotment
  has_many :purchases, dependent: :destroy
end
