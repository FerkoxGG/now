class Offer < ApplicationRecord
  belongs_to :allotment
  has_many :purchases, dependent: :destroy
  has_one_attached :photo
end
