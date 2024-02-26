class Supertype < ApplicationRecord
  has_many :type
  validates :name, presence: true
end
