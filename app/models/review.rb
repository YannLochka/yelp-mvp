class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
  validates :rating, :inclusion => 0..5
end
