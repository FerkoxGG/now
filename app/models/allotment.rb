class Allotment < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy

  accepts_nested_attributes_for :offers

  scope :by_category, -> category { where(category: category) }


end
